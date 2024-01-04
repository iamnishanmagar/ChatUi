import 'package:flutter/material.dart';

class CircleAvatarSection extends StatelessWidget {
  final List<String> circleAvatar;
  final List<String> names;
  const CircleAvatarSection({
    super.key,
    required this.names,
    required this.circleAvatar,
  });

  @override
  Widget build(BuildContext context) {
    final orientationData = MediaQuery.of(context).orientation;
    final deviceData = MediaQuery.of(context).size;

    return SizedBox(
      width: double.infinity,
      height: orientationData == Orientation.portrait
          ? deviceData.height / 6.195
          : deviceData.height / 3.521,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: circleAvatar.length,
          itemBuilder: (context, index) {
            return SizedBox(
              height: 90,
              width: 90,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    circleAvatar[index],
                    scale: 2.5,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    names[index],
                    style: const TextStyle(color: Colors.black),
                  )
                ],
              ),
            );
          }),
    );
  }
}
