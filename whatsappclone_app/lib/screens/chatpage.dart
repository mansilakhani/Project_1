import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappclone_app/models/chat_item_model.dart';
import 'package:whatsappclone_app/screens/globals.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
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
            itemCount: chatItemData.length,
            itemBuilder: (context, i) => Column(
              children: [
                const Divider(height: 10),
                ListTile(
                  leading: CircleAvatar(
                    foregroundColor: Theme.of(context).primaryColor,
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(chatItemData[i].avatarUrl),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        chatItemData[i].name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        chatItemData[i].time,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 14.0),
                      ),
                    ],
                  ),
                  subtitle: Container(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Text(
                      chatItemData[i].message,
                      style:
                          const TextStyle(color: Colors.grey, fontSize: 15.0),
                    ),
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
                SizedBox(
                  height: 100,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                      ),
                      child: Text(
                        "Broadcast Lists",
                        style: TextStyle(
                          color: CupertinoColors.systemBlue,
                          fontSize: 21,
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 6,
                    ),
                    // SizedBox(width: 60),
                    Text(
                      "New Group",
                      style: TextStyle(
                        color: CupertinoColors.systemBlue,
                        fontSize: 21,
                      ),
                    ),
                    Spacer(),
                  ],
                ),
                const Spacer(flex: 1),
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
                            "https://st1.bollywoodlife.com/wp-content/uploads/2021/08/Neha-Kakkar.jpg"),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Neha Kakkar",
                          style: chatstyle_1,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Hi",
                          style: chatstyle_2,
                        ),
                      ],
                    ),
                    const Spacer(flex: 10),
                    Text(
                      "3:50 pm",
                      style: chatstyle_2,
                    ),
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
                          "https://themayanagari.com/wp-content/uploads/2021/03/Sradha-kapoor.png",
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Shraddha kapoor",
                          style: chatstyle_1,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Hello",
                          style: chatstyle_2,
                        ),
                      ],
                    ),
                    const Spacer(flex: 10),
                    Text(
                      "6:00 am",
                      style: chatstyle_2,
                    ),
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
                          "Hey",
                          style: chatstyle_2,
                        ),
                      ],
                    ),
                    const Spacer(flex: 10),
                    Text(
                      "2:00 pm",
                      style: chatstyle_2,
                    ),
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
                            "https://static.javatpoint.com/biography/images/natasa-stankovic.png"),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Natasha Stankovic",
                          style: chatstyle_1,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Hi",
                          style: chatstyle_2,
                        ),
                      ],
                    ),
                    const Spacer(flex: 10),
                    Text(
                      "10:00 pm",
                      style: chatstyle_2,
                    ),
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
                          "Good morning",
                          style: chatstyle_2,
                        ),
                      ],
                    ),
                    const Spacer(flex: 10),
                    Text(
                      "7:30 pm",
                      style: chatstyle_2,
                    ),
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
                          "Hello",
                          style: chatstyle_2,
                        ),
                      ],
                    ),
                    const Spacer(flex: 10),
                    Text(
                      "9:00 pm",
                      style: chatstyle_2,
                    ),
                    const Spacer(flex: 1)
                  ],
                ),
                const SizedBox(height: 15),

                //const Divider(height: 1),
                const Spacer(flex: 8),
              ],
            ),
          );
  }
}
