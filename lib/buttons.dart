import 'package:flutter/material.dart';

class LearningButton extends StatelessWidget {
  final String topic;
  final Function(String topic) changeTopic;

  const LearningButton(
      {super.key, required this.topic, required this.changeTopic});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // callback function is a function that get called at a certain time
        changeTopic(topic);
      },
      child: Container(
        width: double.maxFinite,
        height: 70,
        margin: const EdgeInsets.only(top: 20, left: 40, bottom: 20, right: 40),
        decoration: BoxDecoration(
          color: Colors.lightBlue,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            topic,
            style: const TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
