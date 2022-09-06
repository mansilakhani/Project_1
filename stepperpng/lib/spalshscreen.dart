import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Duration duration = const Duration(seconds: 2);
    Timer(duration, () {
      Navigator.of(context).pushReplacementNamed('/');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(width: 45),
                Image.asset(
                  "assets/images/stepperlogo.png",
                  scale: 2,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 70),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Flutter",
                        style: TextStyle(
                            fontWeight: FontWeight.w100,
                            fontSize: 40,
                            color: const Color(0xff73c5ed).withOpacity(0.3)),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 40, bottom: 13),
                        child: Text(
                          "Devs",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 30,
                            color: Color(0xff135d9c),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
