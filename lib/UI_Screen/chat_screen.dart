import 'package:flutter/material.dart';
import 'package:uichat/UI_components/circle_avatarsection.dart';
import 'package:uichat/UI_components/message_container.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<String> circleAvatar = [
    'assets/online.png',
    'assets/online.png',
    'assets/offline.png',
    'assets/online.png',
    'assets/online.png',
    'assets/offline.png',
    'assets/offline.png',
    'assets/online.png',
    'assets/offline.png',
    'assets/online.png',
  ];

  final List<String> names = [
    'Maya',
    'Nindy',
    'Jaraa',
    'Dinda',
    'Alya',
    'Messi',
    'Rocco',
    'Sasira',
    'Salma',
    'Laurent',
  ];
  final List<String> messageList = [
    'Salma',
    'Cindy',
    'Bella',
    'Laurent',
    'Gabriella',
    'Messi',
    'Rocco',
    'Anastasia',
    'Salma',
    'Sasira,'
  ];
  final List<String> subtitleMessage = [
    'Hello 👋',
    'Hello, nice to meet you too 😊',
    'Typing...',
    'Laurent scheduled a date',
    'Would you mind if we meet  \n somewhere?',
    'The World Is Yours!',
    'Lets go for the hike?',
    'Bye!',
    'Oh no! Really',
    'Fuck it!,'
  ];
  final List<String> timeSent = [
    '5 min ago',
    '08:11 AM',
    '12:11 PM',
    '10:45 AM',
    'Wednesday',
    'Sunday',
    '11:11 AM',
    '09:46 PM',
    'Monday',
    'Tuesday'
  ];

  @override
  Widget build(BuildContext context) {
    final deviceData = MediaQuery.of(context).size;
    final orientationData = MediaQuery.of(context).orientation;

    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
              width: orientationData == Orientation.portrait
                  ? deviceData.width / 4.571
                  : deviceData.width / 9.447,
              margin: EdgeInsets.only(
                right: orientationData == Orientation.portrait
                    ? deviceData.width / 1.371
                    : deviceData.width / 1.14,
              ),
              child: const Text(
                'Match',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700),
              )),
          CircleAvatarSection(
            circleAvatar: circleAvatar,
            names: names,
          ),
          Expanded(
            child: MessageContainer(
                circleAvatar: circleAvatar,
                messageList: messageList,
                subtitleMessage: subtitleMessage,
                timeSent: timeSent),
          ),
        ],
      )),
    );
  }
}
