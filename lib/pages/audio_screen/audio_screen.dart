import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class AudioScreeen extends StatefulWidget {
  AudioScreeen({super.key, this.title});

  final String? title;

  @override
  State<AudioScreeen> createState() => _AudioScreeenState();
}

class _AudioScreeenState extends State<AudioScreeen> {
  final player1 = AudioPlayer();
  final player2 = AudioPlayer();
  final player3 = AudioPlayer();
  Timer? timer;
  bool istrue = true;

  void audioOnInit() {
    print("/........................$istrue");
    if (istrue == true) {
      player3.play(AssetSource("cartoon-intro-13087.mp3"));
      player3.onPlayerComplete.listen((event) {
        Timer.periodic(const Duration(seconds: 10), (timer) {
          audioOnInit();
        });
      });
    } else {
      player3.stop();
    }
  }

  // final periodicTimer = Timer.periodic(const Duration(seconds: 20), (timer) {
  //   audioOnInit();
  // });

  //final audiostart = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    audioOnInit();
  }

  // void dispose() {
  //   //...
  //   super.dispose();
  //   //...
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(60.0),
      child: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        children: [
          InkWell(
            onTap: () {
              player3.stop();

              setState(() {
                istrue = false;
              });
              player1.play(AssetSource('number_seven.mp3'));
              player1.onPlayerComplete.listen((event) {
                player1.stop();
              });
            },
            child: const DigitWidget(
              title: "1",
            ),
          ),
          InkWell(
            onTap: () {
              player2.play(AssetSource('number_seven.mp3'));
            },
            child: const DigitWidget(
              title: "2",
            ),
          ),
          const DigitWidget(
            title: "3",
          ),
          const DigitWidget(
            title: "4",
          ),
          const DigitWidget(
            title: "5",
          ),
          const DigitWidget(
            title: "6",
          ),
          const DigitWidget(
            title: "7",
          ),
          const DigitWidget(
            title: "8",
          ),
          const DigitWidget(
            title: "9",
          )
        ],
      ),
    ));
  }
}

class DigitWidget extends StatelessWidget {
  const DigitWidget({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color.fromARGB(255, 26, 34, 47)),
      child: Center(
        child: Text(
          title!,
          style: const TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

// class InitialRecording extends StatelessWidget {
//   const InitialRecording({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return 
//   }
// }