import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class AudioScreeen extends StatefulWidget {
  const AudioScreeen({super.key, this.title});

  final String? title;

  @override
  State<AudioScreeen> createState() => _AudioScreeenState();
}

class _AudioScreeenState extends State<AudioScreeen> {
  final player = AudioPlayer();

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
              player.play(AssetSource('number_seven.mp3'));
              //print(AssetSource("assets/number_seven.mp3"));
            },
            child: const DigitWidget(
              title: "1",
            ),
          ),
          InkWell(
            onTap: () {
              player.play(AssetSource('number_seven.mp3'));
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
