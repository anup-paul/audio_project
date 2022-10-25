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
  final player = AudioPlayer();
  final initPlayer = AudioPlayer();
  Timer? timer;
  bool isTrue = true;

  void audioOnInit() {
    print("/........................$isTrue");
    if (isTrue == true) {
      initPlayer.play(AssetSource("intro-instruction.mp3"));
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
    super.initState();
    audioOnInit();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 227, 227, 227),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 227, 227, 227),
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  'Test 1 of 4',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                const Text(
                  'Please press the numbers in this sequence 4 7 3 5 8 and click next',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: const TextField(
                    cursorColor: Colors.white,
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: GridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    crossAxisCount: 3,
                    crossAxisSpacing: 5.0,
                    mainAxisSpacing: 5.0,
                    children: [
                      InkWell(
                        onTap: () {
                          initPlayer.stop();
                          setState(() {
                            isTrue = false;
                          });
                          player.play(AssetSource('00.mp3'));
                          player.onPlayerComplete.listen((event) {
                            player.stop();
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
                            isTrue = false;
                          });
                          player.play(AssetSource('02.mp3'));
                          player.onPlayerComplete.listen((event) {
                            player.stop();
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
                            isTrue = false;
                          });
                          player.play(AssetSource('03.mp3'));
                          player.onPlayerComplete.listen((event) {
                            player.stop();
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
                            isTrue = false;
                          });
                          player.play(AssetSource('04.mp3'));
                          player.onPlayerComplete.listen((event) {
                            player.stop();
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
                            isTrue = false;
                          });
                          player.play(AssetSource('05.mp3'));
                          player.onPlayerComplete.listen((event) {
                            player.stop();
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
                            isTrue = false;
                          });
                          player.play(AssetSource('06.mp3'));
                          player.onPlayerComplete.listen((event) {
                            player.stop();
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
                            isTrue = false;
                          });
                          player.play(AssetSource('07.mp3'));
                          player.onPlayerComplete.listen((event) {
                            player.stop();
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
                            isTrue = false;
                          });
                          player.play(AssetSource('08.mp3'));
                          player.onPlayerComplete.listen((event) {
                            player.stop();
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
                            isTrue = false;
                          });
                          player.play(AssetSource('09.mp3'));
                          player.onPlayerComplete.listen((event) {
                            player.stop();
                          });
                        },
                        child: const DigitWidget(
                          title: "9",
                        ),
                      ),
                      const SizedBox.shrink(),
                      InkWell(
                        onTap: () {
                          initPlayer.stop();
                          setState(() {
                            isTrue = false;
                          });
                          player.play(AssetSource('00.mp3'));
                          player.onPlayerComplete.listen((event) {
                            player.stop();
                          });
                        },
                        child: const DigitWidget(
                          title: "0",
                        ),
                      ),
                    ],
                  ),
                ),
                // SizedBox(
                //   height: MediaQuery.of(context).size.height * 0.04,
                // ),
                InkWell(
                  onTap: () {},
                  child: Center(
                      child: Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color.fromARGB(255, 180, 114, 85)),
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
      ),
      child: Center(
        child: Text(
          title!,
          style: const TextStyle(
              color: Colors.grey, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
