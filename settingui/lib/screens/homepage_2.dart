import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../globals/globals.dart';

class HomePage_2 extends StatefulWidget {
  const HomePage_2({Key? key}) : super(key: key);

  @override
  State<HomePage_2> createState() => _HomePage_2State();
}

class _HomePage_2State extends State<HomePage_2> {
  @override
  Widget build(BuildContext context) {
    String myAppTitle = 'Settings UI';

    TextStyle titlecolor = TextStyle(
      color: const Color(0xffff4500).withOpacity(0.8),
    );

    TextStyle textstyle = const TextStyle(
      fontSize: 16,
      color: CupertinoColors.black,
    );
    return CupertinoApp(
      // color: CupertinoColors.destructiveRed,
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          backgroundColor: CupertinoColors.destructiveRed,
          middle: Text(
            myAppTitle,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              letterSpacing: 0.2,
            ),
          ),
        ),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: CupertinoColors.white,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Common",
                  style: titlecolor,
                ),
                const SizedBox(height: 15),
                ...common_list.map((e) => Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        e['icon'],
                        const SizedBox(width: 15),
                        const SizedBox(height: 45),
                        Text(
                          "${e['name']}",
                          style: textstyle,
                        ),
                        const SizedBox(height: 15),
                        const Spacer(flex: 10),
                        Text(
                          "${e['name_1']}",
                          style: const TextStyle(
                            color: CupertinoColors.systemGrey,
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {},
                          child: const Icon(
                            CupertinoIcons.forward,
                            color: CupertinoColors.systemGrey2,
                          ),
                        ),
                      ],
                    )),
                const SizedBox(height: 15),
                Text(
                  "Account",
                  style: titlecolor,
                ),
                const SizedBox(height: 15),
                ...account_list.map((e) => Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        e['icon'],
                        const SizedBox(width: 15),
                        const SizedBox(height: 45),
                        Text(
                          "${e['name']}",
                          style: textstyle,
                        ),
                        const Spacer(),
                        const Icon(
                          CupertinoIcons.forward,
                          color: CupertinoColors.systemGrey2,
                        )
                      ],
                    )),
                const SizedBox(height: 15),
                Text(
                  "Security",
                  style: titlecolor,
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    security_widget(
                      icon: const Icon(
                        CupertinoIcons.lock_circle,
                        color: CupertinoColors.systemGrey2,
                      ),
                      name: "Lock app in background",
                    ),
                    const Spacer(),
                    CupertinoSwitch(
                        value: Global.lock_App,
                        onChanged: (val) {
                          Global.lock_App = val;
                        }),
                  ],
                ),
                Row(
                  children: [
                    security_widget(
                      icon: const Icon(
                        CupertinoIcons.scope,
                        color: CupertinoColors.systemGrey2,
                      ),
                      name: "Use fingerprint",
                    ),
                    const Spacer(),
                    CupertinoSwitch(
                        value: Global.fingerprint,
                        onChanged: (val) {
                          Global.fingerprint = val;
                        }),
                  ],
                ),
                Row(
                  children: [
                    security_widget(
                      icon: const Icon(
                        CupertinoIcons.lock,
                        color: CupertinoColors.systemGrey2,
                      ),
                      name: "Change password",
                    ),
                    const Spacer(),
                    CupertinoSwitch(
                      value: Global.password,
                      onChanged: (val) {
                        Global.password = val;
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Text(
                  "Misc",
                  style: titlecolor,
                ),
                const SizedBox(height: 15),
                ...misc_list.map(
                  (e) => Row(
                    children: [
                      e['icon'],
                      const SizedBox(width: 15),
                      const SizedBox(height: 45),
                      Text(
                        "${e['name']}",
                        style: textstyle,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column security_widget({
    required Icon icon,
    required String name,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 15),
        Row(
          children: [
            icon,
            const SizedBox(width: 15),
            Text(
              name,
              style: const TextStyle(
                fontSize: 16,
                color: CupertinoColors.black,
              ),
            ),

            // SizedBox(width: 120)
          ],
        ),
      ],
    );
  }
}
