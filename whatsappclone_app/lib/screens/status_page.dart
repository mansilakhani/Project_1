import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappclone_app/screens/globals.dart';
import 'package:whatsappclone_app/screens/storypageview.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xfff2f2f2),
      child: (globals.isIos == false)
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  color: Colors.white,
                  elevation: 0.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Stack(
                        children: <Widget>[
                          const CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                'https://i.pinimg.com/originals/ea/17/be/ea17be622e83bc8e368c916ebb4bab59.png'),
                          ),
                          Positioned(
                            bottom: 0.0,
                            right: 1.0,
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: const BoxDecoration(
                                color: Colors.teal,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          )
                        ],
                      ),
                      title: const Text(
                        "My Status",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Text("Tap to add status update"),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Viewed updates",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    color: Colors.white,
                    child: ListView(
                      children: <Widget>[
                        ListTile(
                          leading: const CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                "https://static.javatpoint.com/biography/images/natasa-stankovic.png"),
                          ),
                          title: const Text(
                            "Natasha Stankovic",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: const Text("Today, 09:20 AM"),
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const StoryPageview(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 75,
                ),
                Card(
                  color: Colors.white,
                  elevation: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Stack(
                        children: <Widget>[
                          const CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                'https://i.pinimg.com/originals/ea/17/be/ea17be622e83bc8e368c916ebb4bab59.png'),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 1,
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: const BoxDecoration(
                                color: Colors.teal,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          )
                        ],
                      ),
                      title: const Text(
                        "My Status",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Text("Tap to add status update"),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  color: CupertinoColors.white,
                  padding: const EdgeInsets.all(8),
                  child: const Text(
                    "Viewed updates",
                    style: TextStyle(
                      color: CupertinoColors.systemGrey2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 60,
                            width: 60,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => StoryPageview(),
                                  ),
                                );
                              },
                              child: ClipOval(
                                child: Image.network(
                                    "https://static.javatpoint.com/biography/images/natasa-stankovic.png"),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Natasha Stankovic",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: CupertinoColors.black,
                              ),
                            ),
                            Text(
                              "Today, 09:20 AM",
                              style: TextStyle(
                                fontSize: 14,
                                color: CupertinoColors.systemGrey2,
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
    );
  }
}
