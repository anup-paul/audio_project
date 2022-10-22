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
  final player4 = AudioPlayer();
  final player5 = AudioPlayer();
  final player6 = AudioPlayer();
  final player7 = AudioPlayer();
  final player8 = AudioPlayer();
  final player9 = AudioPlayer();
  final initPlayer = AudioPlayer();
  Timer? timer;
  bool istrue = true;

  void audioOnInit() {
    print("/........................$istrue");
    if (istrue == true) {
      initPlayer.play(AssetSource("cartoon-intro-13087.mp3"));
      initPlayer.onPlayerComplete.listen((event) {
        Timer.periodic(const Duration(seconds: 10), (timer) {
          audioOnInit();
        });
      });
    } else {
      initPlayer.stop();
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    audioOnInit();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Text(
                "Lorem LoremLorem Lorem Lorem Loregergem Lorem Lorem Lodfgfdgoegergerem Lorem Lorem ",
                textAlign: TextAlign.justify,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 3,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                  children: [
                    InkWell(
                      onTap: () {
                        initPlayer.stop();
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
                        initPlayer.stop();
                        setState(() {
                          istrue = false;
                        });
                        player2.play(AssetSource('number_seven.mp3'));
                        player2.onPlayerComplete.listen((event) {
                          player2.stop();
                        });
                      },
                      child: const DigitWidget(
                        title: "2",
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        initPlayer.stop();
                        setState(() {
                          istrue = false;
                        });
                        player3.play(AssetSource('number_seven.mp3'));
                        player3.onPlayerComplete.listen((event) {
                          player3.stop();
                        });
                      },
                      child: const DigitWidget(
                        title: "3",
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        initPlayer.stop();
                        setState(() {
                          istrue = false;
                        });
                        player4.play(AssetSource('number_seven.mp3'));
                        player4.onPlayerComplete.listen((event) {
                          player4.stop();
                        });
                      },
                      child: const DigitWidget(
                        title: "4",
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        initPlayer.stop();
                        setState(() {
                          istrue = false;
                        });
                        player5.play(AssetSource('number_seven.mp3'));
                        player5.onPlayerComplete.listen((event) {
                          player5.stop();
                        });
                      },
                      child: const DigitWidget(
                        title: "5",
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        initPlayer.stop();
                        setState(() {
                          istrue = false;
                        });
                        player6.play(AssetSource('number_seven.mp3'));
                        player6.onPlayerComplete.listen((event) {
                          player6.stop();
                        });
                      },
                      child: const DigitWidget(
                        title: "6",
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        initPlayer.stop();
                        setState(() {
                          istrue = false;
                        });
                        player7.play(AssetSource('number_seven.mp3'));
                        player7.onPlayerComplete.listen((event) {
                          player7.stop();
                        });
                      },
                      child: const DigitWidget(
                        title: "7",
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        initPlayer.stop();
                        setState(() {
                          istrue = false;
                        });
                        player8.play(AssetSource('number_seven.mp3'));
                        player8.onPlayerComplete.listen((event) {
                          player8.stop();
                        });
                      },
                      child: const DigitWidget(
                        title: "8",
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        initPlayer.stop();
                        setState(() {
                          istrue = false;
                        });
                        player9.play(AssetSource('number_seven.mp3'));
                        player9.onPlayerComplete.listen((event) {
                          player9.stop();
                        });
                      },
                      child: const DigitWidget(
                        title: "9",
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              InkWell(
                onTap: () {},
                child: Center(
                    child: Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color.fromARGB(255, 180, 114, 85)),
                  child: const Center(
                    child: Text(
                      "Next",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )),
              ),
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