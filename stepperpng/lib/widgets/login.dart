import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget loginUi() {
  final TextEditingController email_controller = TextEditingController();
  final TextEditingController psw_controller = TextEditingController();
  return Center(
      child: ListView(
    shrinkWrap: true,
    reverse: false,
    children: <Widget>[
      const SizedBox(
        height: 20.0,
      ),
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
                      // autovalidateMode: false,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, right: 10.0),
                            child: TextFormField(
                              controller: email_controller,
                              autofocus: false,
                              decoration: const InputDecoration(
                                labelText: "User Name*",
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
                                obscureText: true,
                                autofocus: false,
                                controller: psw_controller,
                                decoration: const InputDecoration(
                                    labelText: "Password*",
                                    prefixIcon: Padding(
                                      padding: EdgeInsets.only(
                                          bottom: 10.0,
                                          top: 10.0,
                                          left: 10.0,
                                          right: 10.0),
                                      child: Icon(Icons.lock),
                                    )),
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
