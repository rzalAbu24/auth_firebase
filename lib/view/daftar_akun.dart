import 'package:auth_mobile2/view/widget/button_widget.dart';
import 'package:auth_mobile2/view/widget/container_form.dart';
import 'package:flutter/material.dart';

class DaftarAkun extends StatefulWidget {
  const DaftarAkun({super.key});

  @override
  State<DaftarAkun> createState() => _DaftarAkunState();
}

class _DaftarAkunState extends State<DaftarAkun> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nowhatsappController = TextEditingController();
  final TextEditingController _nimController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                width: w,
                height: h * 2 - 700,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.green.shade400,
                  Colors.green.shade600,
                  Colors.green.shade700,
                ])),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // SizedBox(
                    //   height: 50,
                    // ),
                    const Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Daftar Akun User",
                            style: TextStyle(color: Colors.white, fontSize: 40),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Silahkan Isi Form dibawah ini",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(60),
                              topRight: Radius.circular(60))),
                      child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: Column(
                          children: <Widget>[
                            const SizedBox(
                                // height: 10,
                                ),
                            Container(
                              // height: h - 100,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                        color:
                                            Color.fromRGBO(15, 156, 78, 0.992),
                                        blurRadius: 20,
                                        offset: Offset(0, 10))
                                  ]),
                              child: Column(
                                children: <Widget>[
                                  FormWidgetContainer(
                                    controller: _namaController,
                                    hintText: 'Nama',
                                    isPasswordField: false,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Nama Tidak Boleh Kosong';
                                      }
                                      return null;
                                    },
                                  ),
                                  FormWidgetContainer(
                                    controller: _nimController,
                                    hintText: 'NIM',
                                    isPasswordField: false,
                                    inputType: TextInputType.number,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'NIM Tidak Boleh Kosong';
                                      }
                                      return null;
                                    },
                                  ),
                                  FormWidgetContainer(
                                    controller: _nowhatsappController,
                                    hintText: 'No WhatsApp',
                                    isPasswordField: false,
                                    inputType: TextInputType.phone,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'No WhatsApp Tidak Boleh Kosong';
                                      }
                                      return null;
                                    },
                                  ),
                                  FormWidgetContainer(
                                    controller: _emailController,
                                    hintText: 'Email',
                                    isPasswordField: false,
                                    inputType: TextInputType.emailAddress,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Email Tidak Boleh Kosong';
                                      }
                                      return null;
                                    },
                                  ),
                                  FormWidgetContainer(
                                    controller: _passwordController,
                                    hintText: 'Password',
                                    isPasswordField: true,
                                    inputType: TextInputType.text,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Password Tidak Boleh Kosong';
                                      }
                                      return null;
                                    },
                                  ),
                                  FormWidgetContainer(
                                    controller: _confirmPasswordController,
                                    hintText: 'Ulangi Password',
                                    isPasswordField: true,
                                    inputType: TextInputType.text,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Silahkan Ulangi Password';
                                      } else if (value !=
                                          _passwordController.text) {
                                        return 'Passwords Tidak Sama';
                                      }
                                      return null;
                                    },
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                                height: 50,
                                width: 150,
                                child: CustomButton(
                                    text: 'Daftar', onPressed: () {})),
                          ],
                        ),
                      ),
                    ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
