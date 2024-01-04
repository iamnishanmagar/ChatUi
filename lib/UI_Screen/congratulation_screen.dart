import 'package:flutter/material.dart';
import 'package:uichat/UI_Screen/chat_screen.dart';

class CongratulationUi extends StatefulWidget {
  const CongratulationUi({super.key});

  @override
  State<CongratulationUi> createState() => _CongratulationUiState();
}

class _CongratulationUiState extends State<CongratulationUi> {
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      body: SafeArea(
        child: OrientationBuilder(builder: (context, orientationBuilder) {
          return Stack(
            children: [
              Positioned(
                left: orientation == Orientation.portrait ? -45 : -55,
                top: 40,
                child: const Image(
                    fit: BoxFit.contain,
                    image: AssetImage(
                      'assets/images/heart.png',
                    ),
                    height: 100),
              ),
              Positioned(
                top: 90,
                left: -40,
                child: Image.asset(
                  'assets/images/heart.png',
                  scale: 3,
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                top: orientation == Orientation.portrait ? 5 : 10,
                left: orientation == Orientation.portrait ? 84 : 250,
                child: const Text(
                  'Congratulations',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                // shape-50(yellow Star)
                left: orientation == Orientation.portrait ? 18 : 50,
                top: 150,
                child: const Image(
                  fit: BoxFit.contain,
                  image: AssetImage(
                    'assets/images/shape-59.png',
                  ),
                  height: 100,
                ),
              ),
              Positioned(
                // rectangle left side
                left: orientation == Orientation.portrait ? 36 : 240,

                top: orientation == Orientation.portrait ? 205 : 5,
                child: Align(
                  child: SizedBox(
                    width: 170,
                    height: 240,
                    child: Image.asset(
                      'assets/images/rectangle-111.png',
                      width: 200,
                      height: 240,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Positioned(
                // rectangle right side
                left: orientation == Orientation.portrait ? 210 : 350,
                top: orientation == Orientation.portrait ? 230 : 5,
                child: Image.asset(
                  'assets/images/rectangle-112.png',
                  width: orientation == Orientation.portrait ? 169 : 300,
                  height: 240,
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                  // Star below the right container
                  top: orientation == Orientation.portrait ? 405 : 180,
                  left: orientation == Orientation.portrait ? 230 : 430,
                  child: Image.asset(
                    'assets/images/shape-59.png',
                    scale: 2,
                    fit: BoxFit.contain,
                  )),
              Positioned(
                // image between the two mirrorlike container..
                left: orientation == Orientation.portrait ? 170 : 376,
                top: orientation == Orientation.portrait ? 320 : 150,

                height: 70,
                child: Image.asset(
                  'assets/images/heart.png',
                  scale: 3,
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                  top: orientation == Orientation.portrait ? 490 : 230,
                  left: orientation == Orientation.portrait ? 138 : 340,
                  child: const Text(
                    'Ratna',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  )),
              Positioned(
                //// Elevated button for hello
                top: orientation == Orientation.portrait ? 640 : 300,
                left: orientation == Orientation.portrait ? 40 : 220,

                child: ElevatedButton(
                  style: const ButtonStyle(
                      minimumSize: MaterialStatePropertyAll(Size(350, 60)),
                      elevation: MaterialStatePropertyAll(20),
                      shadowColor: MaterialStatePropertyAll(Color(0xfffa5480)),
                      backgroundColor:
                          MaterialStatePropertyAll(Color(0xfffa5480))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ChatScreen()));
                  },
                  child: const Text(
                    'Say Hello 👋',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              Positioned(
                top: orientation == Orientation.portrait ? 720 : 360,
                left: orientation == Orientation.portrait ? 80 : 260,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Not Now. I\'ll Talk Later',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ),
              Positioned(
                // blue tick verified image
                top: orientation == Orientation.portrait ? 500 : 240,
                left: orientation == Orientation.portrait ? 250 : 450,

                height: 30,
                child: Image.asset(
                  'assets/images/material-symbols-verified-rounded-TJV.png',
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                // longtext for ratna
                top: orientation == Orientation.portrait ? 555 : 270,
                left: 10,
                right: 0,

                child: const Text(
                  'Let\'s ask her about something interesting or you can just start with "hello".',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Positioned(
                top: orientation == Orientation.portrait ? 435 : 180,
                left: 5,
                height: 140,
                child: Image.network(
                  'https://tr.rbxcdn.com/925753b92af735626bb21383d4d65dcd/420/420/Hat/Png',
                  color: const Color(0xfffa5480),
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                top: 160,
                right: orientation == Orientation.portrait ? 70 : 30,
                height: 50,
                child: Image.asset(
                  'assets/images/vuesax-bold-lovely.png',
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                right: 40,
                top: 65,
                height: 50,
                child: Image.asset(
                  'assets/images/vuesax-bold-lovely.png',
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                top: orientation == Orientation.portrait ? 60 : 70,
                left: orientation == Orientation.portrait ? 110 : 280,
                child: Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xfffa5480)),
                ),
              ),
              Positioned(
                top: orientation == Orientation.portrait ? 60 : 70,
                left: orientation == Orientation.portrait ? 110 : 280,
                child: Transform.rotate(
                  angle: -0.1,
                  child: Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.black),
                    child: const Align(
                      child: Text(
                        'Its a Match',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
