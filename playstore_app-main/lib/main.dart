import 'package:flutter/cupertino.dart';
import 'package:playstore/pages/androidpage/homepage.dart';
import 'package:playstore/pages/androidpage/installpage.dart';
import 'package:playstore/pages/iospage/ihomepage.dart';
import 'package:playstore/utils/varaible.dart';

import 'library/source.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(const Duration(milliseconds: 100), (timer) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return (isIos)
        ? CupertinoApp(
            debugShowCheckedModeBanner: false,
            routes: {
              "/": (context) => const IHomePage(),
              "game_page": (context) => const GamesPage(),
              "app_page": (context) => const AppPage(),
            },
          )
        : MaterialApp(
            debugShowCheckedModeBanner: false,
            routes: {
              "/": (context) => const HomePage(),
              "install_page": (context) => const InstallPage(),
            },
          );
  }
}
