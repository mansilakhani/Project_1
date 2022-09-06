import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../globals/globals.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    String myAppTitle = 'Settings UI';

    TextStyle titlecolor = TextStyle(
      color: const Color(0xffff4500).withOpacity(0.8),
    );

    TextStyle textstyle = const TextStyle(
      fontSize: 16,
    );

    return Scaffold(
      appBar: AppBar(
          actions: [
            (Global.isIos == false)
                ? Switch(
                    value: Global.isIos,
                    onChanged: (val) {
                      setState(() {
                        Global.isIos = val;
                      });
                    })
                : CupertinoSwitch(
                    value: Global.isIos,
                    onChanged: (val) {
                      setState(() {
                        Global.isIos = val;
                      });
                    })
          ],
          backgroundColor: const Color(0xffff4500),
          title: (Global.isIos == false)
              ? Text(
                  myAppTitle,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.2,
                  ),
                )
              : Center(
                  child: Text(
                  myAppTitle,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.2,
                  ),
                ))),
      body: (Global.isIos == false)
          ? SizedBox(
              height: double.infinity,
              width: double.infinity,
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
                          children: [
                            e['icon'],
                            const SizedBox(width: 15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 14),
                                Text(
                                  "${e['name']}",
                                  style: textstyle,
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  "${e['name_1']}",
                                  style: const TextStyle(
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            )
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
                          ],
                        )),
                    const SizedBox(height: 15),
                    Text(
                      "Security",
                      style: titlecolor,
                    ),
                    Row(
                      children: [
                        security_widget(
                          icon: const Icon(
                            Icons.phonelink_lock,
                            color: Colors.grey,
                          ),
                          name: "Lock app in background",
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 100, top: 10),
                          child: Switch(
                              value: Global.lock_App, onChanged: (val) {}),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        security_widget(
                          icon: const Icon(
                            Icons.fingerprint,
                            color: Colors.grey,
                          ),
                          name: "Lock app in background",
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 100, top: 5),
                          child: Switch(
                              value: Global.fingerprint,
                              onChanged: (val) {
                                setState(() {
                                  Global.fingerprint = val;
                                });
                              }),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        security_widget(
                          icon: const Icon(
                            Icons.lock,
                            color: Colors.grey,
                          ),
                          name: "Change password",
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 138, top: 5),
                          child: Switch(
                              value: Global.password, onChanged: (val) {}),
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
            )
          : Container(
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
              ),
            ),
            // SizedBox(width: 120)
          ],
        ),
      ],
    );
  }
}
