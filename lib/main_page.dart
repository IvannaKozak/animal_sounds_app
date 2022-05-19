import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'constants.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  void playSound(soundName) {
    final player = AudioCache();
    player.play('$soundName');
  }

  Color mainColor =
      Color.fromARGB(255, 238, 211, 234); //Color.fromARGB(255, 215, 209, 150);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
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
                            animalImage: AssetImage('images/bird.jpg'),
                            text: 'Bird',
                            colour: Colors.red,
                            onClicked: () {
                              playSound('bird.wav');
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
                            animalImage: AssetImage('images/dog.jpg'),
                            text: 'Dog',
                            colour: Colors.yellow,
                            onClicked: () {
                              playSound('dog.wav');
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
                            animalImage: AssetImage('images/horse.jpg'),
                            text: 'Horse',
                            colour: Colors.green,
                            onClicked: () {
                              playSound('horse.wav');
                              setState(() {});
                            },
                          )),
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
                        ]),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.blue),
                  onPressed: () {},
                  child: Text(
                    'Next',
                    style: kNextTextStyle,
                  )),
            )
          ],
        ));
  }
}

const kMainTextStyle = TextStyle(fontSize: 20.0, color: Colors.white);

class RainbowButton extends StatelessWidget {
  RainbowButton(
      {@required this.onClicked, this.text, this.colour, this.animalImage});
  final Function onClicked;
  final String text;
  final Color colour;
  final AssetImage animalImage;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      child: CircleAvatar(
        radius: 90.0,
        backgroundImage: animalImage,
      ),
      onPressed: onClicked,
      //shape: CircleBorder(),
      fillColor: Color.fromARGB(255, 216, 255, 60),
    );
  }
}
