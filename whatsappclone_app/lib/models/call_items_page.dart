import 'dart:ui';

import 'package:flutter/material.dart';

class CallItemModel {
  final String name;
  final String time;
  final String avatarUrl;
  final Color colorItem;

  CallItemModel({
    required this.name,
    required this.time,
    required this.avatarUrl,
    required this.colorItem,
  });
}

List<CallItemModel> callItemData = [
  CallItemModel(
    name: "Vinny Arora",
    time: 'March 12 , 2:00 PM',
    avatarUrl:
        "https://cdn.99images.com/photos/celebrities/vinny-arora/sm/vinny-arora-hd-photos-wallpapers-for-mobile-download-whatsapp-r14n.jpg",
    colorItem: Colors.green,
  ),
  CallItemModel(
    name: "Anushka Sharma",
    time: 'August 5 , 3:00 AM',
    avatarUrl: "https://static.toiimg.com/photo/86629767/86629767.jpg?v=3",
    colorItem: Colors.green,
  ),
  CallItemModel(
    name: "Nidhi Agarwal",
    time: 'August 12 , 9:00 AM',
    avatarUrl: "https://wallpaperaccess.com/full/1728027.jpg",
    colorItem: Colors.green,
  )
];
