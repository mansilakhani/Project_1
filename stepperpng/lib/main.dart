import 'package:flutter/material.dart';
import 'package:stepperpng/spalshscreen.dart';
import 'package:stepperpng/stepperpage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'splashscreen',
    routes: {
      '/': (context) => const StepperApp(),
      'splashscreen': (context) => const SplashScreen(),
    },
  ));
}
