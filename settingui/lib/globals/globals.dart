import 'package:flutter/material.dart';

class Global {
  static bool isIos = true;
  static bool lock_App = true;
  static bool fingerprint = false;
  static bool password = true;
}

List<Map> common_list = [
  {
    'icon': const Icon(
      Icons.language,
      color: Colors.grey,
    ),
    'name': "Language",
    'name_1': "English",
  },
  {
    'icon': const Icon(
      Icons.cloud_outlined,
      color: Colors.grey,
    ),
    'name': "Environment",
    'name_1': "Production",
  }
];

List<Map> account_list = [
  {
    'icon': const Icon(
      Icons.phone,
      color: Colors.grey,
    ),
    'name': "Phone number",
  },
  {
    'icon': const Icon(
      Icons.email_rounded,
      color: Colors.grey,
    ),
    'name': "Email",
  },
  {
    'icon': const Icon(
      Icons.input,
      color: Colors.grey,
    ),
    'name': "Sign out",
  }
];

List<Map> misc_list = [
  {
    'icon': const Icon(
      Icons.file_copy,
      color: Colors.grey,
    ),
    'name': "Terms of Service",
  },
  {
    'icon': const Icon(
      Icons.folder_copy_sharp,
      color: Colors.grey,
    ),
    'name': "Open source licenses",
  },
];
