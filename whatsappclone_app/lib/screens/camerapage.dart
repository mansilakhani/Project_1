import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappclone_app/screens/globals.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({Key? key}) : super(key: key);

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  @override
  Widget build(BuildContext context) {
    return (globals.isIos == false)
        ? Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              backgroundColor: Colors.black,
              actions: const [
                Icon(Icons.flash_off),
              ],
              leading: Image.network(
                'https://icons.iconarchive.com/icons/icons8/ios7/256/Very-Basic-Cancel-icon.png',
                scale: 12,
                color: Colors.white,
              ),
            ),
            body: Column(
              children: [
                const Spacer(
                  flex: 7,
                ),
                Row(
                  children: const [
                    SizedBox(width: 15),
                    Icon(
                      Icons.photo,
                      color: Colors.white,
                    ),
                    Spacer(
                      flex: 9,
                    ),
                    Icon(
                      Icons.circle_outlined,
                      size: 70,
                      color: Colors.white,
                    ),
                    Spacer(
                      flex: 6,
                    ),
                    SizedBox(width: 15),
                    Icon(
                      Icons.camera_enhance_outlined,
                      color: Colors.white,
                    ),
                    Spacer(
                      flex: 1,
                    )
                  ],
                ),
                const Spacer(
                  flex: 1,
                )
              ],
            ),
          )
        : Container(
            color: CupertinoColors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 300,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Image.network(
                        "https://icons.iconarchive.com/icons/icons8/ios7/256/Very-Basic-Cancel-icon.png",
                        scale: 10,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    const Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Icon(
                        CupertinoIcons.lightbulb_slash,
                        color: CupertinoColors.white,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 300,
                ),
                Column(
                  children: [
                    Row(
                      children: const [
                        Spacer(
                          flex: 4,
                        ),
                        Icon(
                          CupertinoIcons.photo,
                          color: Colors.white,
                        ),
                        // SizedBox(width: 20),
                        Spacer(
                          flex: 8,
                        ),
                        Icon(
                          CupertinoIcons.circle,
                          size: 65,
                          color: Colors.white,
                        ),
                        Spacer(
                          flex: 8,
                        ),
                        Icon(
                          CupertinoIcons.camera,
                          color: Colors.white,
                        ),
                        Spacer(
                          flex: 4,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          );
  }
}
