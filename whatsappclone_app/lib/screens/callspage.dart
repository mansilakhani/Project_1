import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappclone_app/screens/globals.dart';

import '../models/call_items_page.dart';

class CallsPage extends StatefulWidget {
  const CallsPage({Key? key}) : super(key: key);

  @override
  State<CallsPage> createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {
  TextStyle chatstyle_1 = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: CupertinoColors.black,
  );

  TextStyle chatstyle_2 = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: CupertinoColors.systemGrey2,
  );
  @override
  Widget build(BuildContext context) {
    return (globals.isIos == false)
        ? ListView.builder(
            itemCount: callItemData.length,
            itemBuilder: (context, i) => Column(
              children: <Widget>[
                const Divider(
                  height: 10.0,
                ),
                ListTile(
                  leading: CircleAvatar(
                    foregroundColor: Theme.of(context).primaryColor,
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(callItemData[i].avatarUrl),
                  ),
                  title: Text(
                    callItemData[i].name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Container(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.call_received,
                            color: callItemData[i].colorItem,
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            callItemData[i].time,
                            style: const TextStyle(
                                color: Colors.grey, fontSize: 15.0),
                          ),
                        ],
                      )),
                  trailing: const Icon(
                    Icons.call,
                    color: Colors.green,
                  ),
                )
              ],
            ),
          )
        : Container(
            height: double.infinity,
            width: double.infinity,
            color: CupertinoColors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 85),
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 13,
                      ),
                      child: Text(
                        "Edit",
                        style: TextStyle(
                          color: CupertinoColors.activeBlue,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(width: 40),
                    Container(
                      height: 45,
                      width: 100,
                      alignment: Alignment.center,
                      child: const Text("All"),
                      decoration: const BoxDecoration(
                          color: CupertinoColors.systemBlue,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              bottomLeft: Radius.circular(5))),
                    ),
                    Container(
                      height: 45,
                      width: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: CupertinoColors.systemBlue,
                          ),
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                          )),
                      child: const Text(
                        "Missed",
                        style: TextStyle(
                          color: CupertinoColors.systemBlue,
                        ),
                      ),
                    ),
                    const SizedBox(width: 60),
                    Icon(
                      CupertinoIcons.phone_fill_badge_plus,
                      color: CupertinoColors.systemBlue.withOpacity(0.8),
                    ),
                  ],
                ),

                const Padding(
                  padding: EdgeInsets.only(
                    left: 14,
                    top: 18,
                  ),
                  child: Text(
                    "Calls",
                    style: TextStyle(
                      color: CupertinoColors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CupertinoSearchTextField(
                    backgroundColor: CupertinoColors.white,
                    placeholderStyle: TextStyle(
                        color: CupertinoColors.systemGrey2.withOpacity(0.8),
                        fontSize: 20),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 8, top: 8, right: 5),
                      child: Icon(
                        CupertinoIcons.search,
                        size: 22,
                        color: CupertinoColors.systemGrey2.withOpacity(0.8),
                      ),
                    ),
                  ),
                ),
                Divider(
                  height: 5,
                  color: CupertinoColors.black.withOpacity(0.2),
                ),
                const Spacer(),
                Row(
                  children: [
                    const SizedBox(width: 15),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: CupertinoColors.systemGrey2,
                          borderRadius: BorderRadius.circular(40)),
                      child: ClipOval(
                        child: Image.network(
                            "https://cdn.99images.com/photos/celebrities/vinny-arora/sm/vinny-arora-hd-photos-wallpapers-for-mobile-download-whatsapp-r14n.jpg"),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Vinny Arora",
                          style: chatstyle_1,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "March 12 , 2:00 PM",
                          style: chatstyle_2,
                        ),
                      ],
                    ),
                    const Spacer(flex: 10),
                    const Icon(CupertinoIcons.phone,
                        color: CupertinoColors.systemGreen),
                    const Spacer(flex: 1)
                  ],
                ),
                const SizedBox(height: 15),

                Row(
                  children: [
                    const SizedBox(width: 15),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: CupertinoColors.systemGrey2,
                          borderRadius: BorderRadius.circular(40)),
                      child: ClipOval(
                        child: Image.network(
                            "https://tv9kannadamedia.s3.amazonaws.com/wp-content/uploads/2022/03/Anushka-Sharma-Pics.jpg"),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Anushka Sharma",
                          style: chatstyle_1,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "August 5, 3:00",
                          style: chatstyle_2,
                        ),
                      ],
                    ),
                    const Spacer(flex: 10),
                    const Icon(CupertinoIcons.phone,
                        color: CupertinoColors.systemGreen),
                    const Spacer(flex: 1)
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    const SizedBox(width: 15),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: CupertinoColors.systemGrey2,
                          borderRadius: BorderRadius.circular(40)),
                      child: ClipOval(
                        child: Image.network(
                            "https://wallpaperaccess.com/full/1728027.jpg"),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Nidhi Agarwal",
                          style: chatstyle_1,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "August 12 , 9:00 AM",
                          style: chatstyle_2,
                        ),
                      ],
                    ),
                    const Spacer(flex: 10),
                    const Icon(
                      CupertinoIcons.phone,
                      color: CupertinoColors.systemGreen,
                    ),
                    const Spacer(flex: 1)
                  ],
                ),
                const SizedBox(height: 15),

                //const Divider(height: 1),
                const Spacer(flex: 15),
              ],
            ),
          );
  }
}
