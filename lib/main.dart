import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Xylophone(),
    );
  }
}

class Xylophone extends StatefulWidget {
  const Xylophone({super.key});

  @override
  State<Xylophone> createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  void playSound(int soundNumber){
     final player = AudioPlayer();
      player.play(AssetSource('note$soundNumber.wav'));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(onPressed: (){
             playSound(1);
            },
            style: ButtonStyle(
              fixedSize: MaterialStateProperty.all(const Size.fromHeight(80.0)),
              backgroundColor: MaterialStateProperty.all(Colors.red),
            ),
             child: const Text('Sound 1'),
             ),
      
              ElevatedButton(onPressed: (){
              playSound(2);
            },
            style: ButtonStyle(
              fixedSize: MaterialStateProperty.all(const Size.fromHeight(80.0)),
              backgroundColor: MaterialStateProperty.all(Colors.orange),
            ),
             child: const Text('Sound 2'),
             ),
      
              ElevatedButton(onPressed: (){
              playSound(3);
            },
            style: ButtonStyle(
              fixedSize: MaterialStateProperty.all(const Size.fromHeight(80.0)),
              backgroundColor: MaterialStateProperty.all(Colors.yellow)
            ),
             child: const Text('Sound 3'),
             ),
      
              ElevatedButton(onPressed: (){
              playSound(4);
            },
            style: ButtonStyle(
              fixedSize: MaterialStateProperty.all(const Size.fromHeight(80.0)),
              backgroundColor: MaterialStateProperty.all(Colors.green),
            ),
             child: const Text('Sound 4'),
             ),
      
              ElevatedButton(onPressed: (){
              playSound(5);
            },
            style: ButtonStyle(
              fixedSize: MaterialStateProperty.all(const Size.fromHeight(80.0)),
              backgroundColor: MaterialStateProperty.all(Colors.teal),
            ),
             child: const Text('Sound 5'),
             ),
      
              ElevatedButton(onPressed: (){
              playSound(6);
            },
            style: ButtonStyle(
              fixedSize: MaterialStateProperty.all(const Size.fromHeight(80.0)),
              backgroundColor: MaterialStateProperty.all(Colors.blue),
            ),
             child: const Text('Sound 6'),
             ),
      
              ElevatedButton(onPressed: (){
              playSound(7);
            },
            style: ButtonStyle(
              fixedSize: MaterialStateProperty.all(const Size.fromHeight(80.0)),
              backgroundColor: MaterialStateProperty.all(Colors.purple)
            ),
             child: const Text('Sound 7'),
             ),
          ],
        ),
      ),
    );
  }
}