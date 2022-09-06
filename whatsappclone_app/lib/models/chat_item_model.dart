class ChatItemModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  ChatItemModel({
    required this.name,
    required this.message,
    required this.avatarUrl,
    required this.time,
  });
}

List<ChatItemModel> chatItemData = [
  ChatItemModel(
    name: "Neha Kakkar",
    message: "Hi ",
    avatarUrl:
        "https://st1.bollywoodlife.com/wp-content/uploads/2021/08/Neha-Kakkar.jpg",
    time: '3:50 pm',
  ),
  ChatItemModel(
    name: "Shraddha kapoor",
    message: "Hello",
    avatarUrl:
        "https://themayanagari.com/wp-content/uploads/2021/03/Sradha-kapoor.png",
    time: '6:00 am',
  ),
  ChatItemModel(
    name: "Vinny Arora",
    message: "Hey",
    avatarUrl:
        "https://cdn.99images.com/photos/celebrities/vinny-arora/sm/vinny-arora-hd-photos-wallpapers-for-mobile-download-whatsapp-r14n.jpg",
    time: '2:00 pm',
  ),
  ChatItemModel(
    name: "Natasha Stankovic",
    message: "Hi",
    avatarUrl:
        "https://static.javatpoint.com/biography/images/natasa-stankovic.png",
    time: '10:00 pm',
  ),
  ChatItemModel(
    name: "Anushka Sharma",
    message: "Good morning",
    avatarUrl:
        "https://tv9kannadamedia.s3.amazonaws.com/wp-content/uploads/2022/03/Anushka-Sharma-Pics.jpg",
    time: '7:00 pm',
  ),
  ChatItemModel(
    name: "Nidhi Agarwal",
    message: "Hello",
    avatarUrl: "https://wallpaperaccess.com/full/1728027.jpg",
    time: '9:00 pm',
  ),
];
