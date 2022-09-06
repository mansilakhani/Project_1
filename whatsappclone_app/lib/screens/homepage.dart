import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappclone_app/screens/globals.dart';
import 'package:whatsappclone_app/screens/status_page.dart';

import 'callspage.dart';
import 'camerapage.dart';
import 'chatpage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  bool showFab = true;
  bool isCallsPage = false;

  List Ios_Tabs = [
    const StatusPage(),
    const CallsPage(),
    const CameraPage(),
    const ChatPage(),
  ];

  @override
  void initState() {
    super.initState();

    _tabController = TabController(vsync: this, initialIndex: 1, length: 4);
    _tabController.addListener(() {
      if (_tabController.index == 1) {
        showFab = true;
        isCallsPage = false;
      } else if (_tabController.index == 3) {
        showFab = true;
        isCallsPage = true;
      } else {
        showFab = false;
        isCallsPage = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return (globals.isIos == false)
        ? Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.teal,
              title: const Text("WhatsApp"),
              elevation: 0.7,
              bottom: TabBar(
                controller: _tabController,
                indicatorColor: Colors.white,
                tabs: const <Widget>[
                  Tab(icon: Icon(Icons.camera_alt)),
                  Tab(text: "CHATS"),
                  Tab(
                    text: "STATUS",
                  ),
                  Tab(
                    text: "CALLS",
                  ),
                ],
              ),
              actions: [
                Switch(
                    value: globals.isIos,
                    onChanged: (val) {
                      setState(() {
                        globals.isIos = val;
                      });
                    }),
                const Icon(Icons.search),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                ),
                const Icon(Icons.more_vert)
              ],
            ),
            body: TabBarView(
              controller: _tabController,
              children: const [
                CameraPage(),
                ChatPage(),
                StatusPage(),
                CallsPage(),
              ],
            ),
            floatingActionButton: showFab
                ? FloatingActionButton(
                    backgroundColor: Colors.teal,
                    child: isCallsPage
                        ? const Icon(
                            Icons.add_call,
                            color: Colors.white,
                          )
                        : const Icon(
                            Icons.message,
                            color: Colors.white,
                          ),
                    onPressed: () {},
                    // onPressed: () => print("fab clicked"),
                  )
                : null,
          )
        : CupertinoApp(
            debugShowCheckedModeBanner: false,
            home: CupertinoPageScaffold(
              // backgroundColor: Colors.red,
              navigationBar: CupertinoNavigationBar(
                //backgroundColor: CupertinoColors.activeGreen,
                leading: Builder(builder: (context) {
                  return const Padding(
                    padding: EdgeInsets.only(left: 2, top: 10, right: 5),
                    child: Text(
                      "Whatsapp",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  );
                }),
                //middle: const Text('Whatsapp'),
                trailing: CupertinoSwitch(
                  value: globals.isIos,
                  onChanged: (val) {
                    setState(() {
                      globals.isIos = val;
                    });
                  },
                ),
              ),
              child: CupertinoApp(
                // color: CupertinoColors.white,
                debugShowCheckedModeBanner: false,
                home: CupertinoPageScaffold(
                    navigationBar: CupertinoNavigationBar(
                      leading: Builder(
                        builder: (context) {
                          return GestureDetector(
                            child: const Icon(
                              CupertinoIcons.line_horizontal_3,
                              color: CupertinoColors.systemGrey2,
                            ),
                            onTap: () {},
                          );
                        },
                      ),
                      middle: const Text(
                        'Whatsapp',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: CupertinoColors.systemGrey2,
                        ),
                      ),
                      trailing: CupertinoSwitch(
                        value: globals.isIos,
                        onChanged: (val) {
                          setState(() {
                            globals.isIos = val;
                          });
                        },
                      ),
                    ),
                    child: CupertinoTabScaffold(
                      tabBuilder: (context, i) {
                        return Ios_Tabs[i];
                      },
                      tabBar: CupertinoTabBar(
                        items: const [
                          BottomNavigationBarItem(
                              icon: Icon(CupertinoIcons.circle),
                              label: 'Status'),
                          BottomNavigationBarItem(
                              icon: Icon(CupertinoIcons.phone), label: 'Calls'),
                          BottomNavigationBarItem(
                              icon: Icon(CupertinoIcons.camera),
                              label: 'Camera'),
                          BottomNavigationBarItem(
                              icon: Icon(CupertinoIcons.chat_bubble),
                              label: 'Chats'),
                        ],
                      ),
                    )),
              ),
            ),
          );
  }
}
