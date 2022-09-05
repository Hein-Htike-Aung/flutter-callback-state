import 'package:cb_state/buttons.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String topic = "Packages";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("cb_state"),
        ),
        body: Column(
          children: [
            Container(
              width: double.maxFinite,
              height: 70,
              margin: const EdgeInsets.only(
                  top: 50, left: 40, bottom: 20, right: 40),
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                  child: Text(
                "Learning Flutter $topic",
                style: const TextStyle(fontSize: 20, color: Colors.white),
              )),
            ),
            LearningButton(
              topic: "Getx",
              changeTopic: (var topic) {
                setState(() {
                  this.topic = topic;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
