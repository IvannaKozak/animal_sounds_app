import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

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
          title: Text('Rainbow Colors'),
        ),
        body: Row(
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
                      backgroundImage: AssetImage('images/bird.jpg'),
                      text: 'Bird',
                      colour: Colors.red,
                      onClicked: () {
                        playSound('bird.wav');
                        setState(() {});
                      },
                    )),
                    Expanded(
                        child: RainbowButton(
                      text: 'Cat',
                      colour: Colors.orange,
                      onClicked: () {
                        playSound('cat.wav');
                        setState(() {});
                      },
                    )),
                    Expanded(
                        child: RainbowButton(
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
                      text: 'Horse',
                      colour: Colors.green,
                      onClicked: () {
                        playSound('horse.wav');
                        setState(() {});
                      },
                    )),
                    Expanded(
                        child: RainbowButton(
                      text: 'Lion',
                      colour: Colors.blue,
                      onClicked: () {
                        playSound('lion.wav');
                        setState(() {});
                      },
                    )),
                    Expanded(
                        child: RainbowButton(
                      text: 'Wild beast',
                      colour: Colors.purple,
                      onClicked: () {
                        playSound('wild_beast.wav');
                        setState(() {});
                      },
                    )),
                  ]),
            ),
          ],
        ));
  }
}

const kMainTextStyle = TextStyle(fontSize: 20.0, color: Colors.white);

class RainbowButton extends StatelessWidget {
  RainbowButton(
      {this.onClicked, this.text, this.colour, AssetImage backgroundImage});
  final Function onClicked;
  final String text;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      child: Text(
        text,
        style: kMainTextStyle,
      ),
      onPressed: onClicked,
      //shape: CircleBorder(),
      fillColor: colour,
    );
  }
}
