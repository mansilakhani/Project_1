import 'package:flutter/material.dart';

Widget signup_Ui() {
  final GlobalKey<FormState> stepper_formKey = GlobalKey<FormState>();
  final TextEditingController name_controller = TextEditingController();
  final TextEditingController re_psw_controller = TextEditingController();

  final TextEditingController email_controller = TextEditingController();
  final TextEditingController psw_controller = TextEditingController();
  bool loginSucess = false;
  return Center(
      child: ListView(
    shrinkWrap: true,
    reverse: false,
    children: <Widget>[
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
              child: Center(
            child: Stack(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                    child: Form(
                      // key: stepper_formKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, right: 10.0),
                            child: TextFormField(
                              controller: name_controller,
                              decoration: const InputDecoration(
                                labelText: "Full Name*",
                                filled: false,
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(
                                      bottom: 10.0,
                                      top: 10.0,
                                      left: 10.0,
                                      right: 10.0),
                                  child: Icon(Icons.person),
                                ),
                              ),
                              keyboardType: TextInputType.emailAddress,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0, right: 10.0, top: 5.0),
                            child: TextFormField(
                              obscureText: false,
                              controller: email_controller,
                              decoration: const InputDecoration(
                                labelText: "Email-Id",
                                enabled: true,
                                filled: false,
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(
                                      bottom: 10, top: 10, left: 10, right: 10),
                                  child: Icon(Icons.email_outlined),
                                ),
                              ),
                              keyboardType: TextInputType.text,
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, top: 5),
                              child: TextFormField(
                                obscureText: true,
                                controller: psw_controller,
                                decoration: const InputDecoration(
                                  labelText: "Password*",
                                  enabled: true,
                                  filled: false,
                                  prefixIcon: Padding(
                                    padding: EdgeInsets.only(
                                        bottom: 10,
                                        top: 10,
                                        left: 10,
                                        right: 10),
                                    child: Icon(Icons.lock),
                                  ),
                                ),
                                keyboardType: TextInputType.text,
                              )),
                          Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10.0, top: 5.0),
                              child: TextFormField(
                                obscureText: true,
                                controller: re_psw_controller,
                                decoration: const InputDecoration(
                                  labelText: "Confirm Password*",
                                  enabled: true,
                                  filled: false,
                                  prefixIcon: Padding(
                                    padding: EdgeInsets.only(
                                        bottom: 10.0,
                                        top: 10.0,
                                        left: 10.0,
                                        right: 10.0),
                                    child: Icon(Icons.lock),
                                  ),
                                ),
                                keyboardType: TextInputType.text,
                              )),
                        ],
                      ),
                    )),
              ],
            ),
          ))
        ],
      )
    ],
  ));
}
