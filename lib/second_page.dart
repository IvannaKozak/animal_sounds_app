import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'constants.dart';
import 'main_page.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  void playSound(soundName) {
    final player = AudioCache();
    player.play('$soundName');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Align(
          alignment: Alignment.center,
          child: Text(
            'Animal sounds',
            style: TextStyle(
                color: Color.fromARGB(255, 9, 13, 73),
                fontFamily: 'Monospace',
                fontWeight: FontWeight.bold,
                letterSpacing: 3.0),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: <Widget>[
                Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Expanded(
                            child: RainbowButton(
                          animalImage: AssetImage('images/dog.jpg'),
                          text: 'Dog',
                          colour: Colors.yellow,
                          onClicked: () {
                            playSound('dog.wav');
                            setState(() {});
                          },
                        )),
                        Expanded(
                            child: RainbowButton(
                          animalImage: AssetImage('images/cat.jpg'),
                          text: 'Cat',
                          colour: Colors.orange,
                          onClicked: () {
                            playSound('cat.wav');
                            setState(() {});
                          },
                        )),
                        Expanded(
                            child: RainbowButton(
                          animalImage: AssetImage('images/bird.jpg'),
                          text: 'Bird',
                          colour: Colors.red,
                          onClicked: () {
                            playSound('bird.wav');
                            setState(() {});
                          },
                        )),
                      ]),
                ),
                Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Expanded(
                            child: RainbowButton(
                          animalImage: AssetImage('images/lion.jpg'),
                          text: 'Lion',
                          colour: Colors.blue,
                          onClicked: () {
                            playSound('lion.wav');
                            setState(() {});
                          },
                        )),
                        Expanded(
                            child: RainbowButton(
                          animalImage: AssetImage('images/wolf.jpg'),
                          text: 'Wild beast',
                          colour: Colors.purple,
                          onClicked: () {
                            playSound('wolf.wav');
                            setState(() {});
                          },
                        )),
                        Expanded(
                            child: RainbowButton(
                          animalImage: AssetImage('images/horse.jpg'),
                          text: 'Horse',
                          colour: Colors.green,
                          onClicked: () {
                            playSound('horse.wav');
                            setState(() {});
                          },
                        )),
                      ]),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.blue),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MainPage(),
                    ),
                  );
                },
                child: Text(
                  'Back',
                  style: kNextTextStyle,
                )),
          )
        ],
      ),
    );
  }
}
