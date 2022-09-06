import 'package:flutter/material.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/widgets/story_view.dart';

class StoryPageview extends StatefulWidget {
  const StoryPageview({Key? key}) : super(key: key);

  @override
  State<StoryPageview> createState() => _StoryPageviewState();
}

class _StoryPageviewState extends State<StoryPageview> {
  final _storyController = StoryController();

  @override
  Widget build(BuildContext context) {
    final controller = StoryController();
    final List<StoryItem> storyItems = [
      StoryItem.text(
          title: '''I will success in life not immediately but definitely''',
          backgroundColor: Colors.pinkAccent),
      StoryItem.pageImage(
          url:
              "https://www.heloplus.com/wp-content/uploads/2020/03/inspirational-quotes-in-english.jpg",
          controller: _storyController),
      StoryItem.pageImage(
          url:
              "https://www.sanjayjangam.com/wp-content/uploads/2021/04/life-quotes-in-english.jpg",
          controller: _storyController,
          imageFit: BoxFit.contain),
    ];
    return Material(
      child: StoryView(
        storyItems: storyItems,
        controller: controller,
        inline: false,
        repeat: true,
      ),
    );
  }
}
