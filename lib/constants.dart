import 'package:flutter/material.dart';

const button_color = Colors.blue;

const kNextTextStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 28.0);
const kButtonStyle = ButtonStyle();

var myTheme = ThemeData.dark().copyWith(
    appBarTheme: AppBarTheme(
        elevation: 0.0,
        backgroundColor:
            Color.fromARGB(255, 216, 255, 60) //Color.fromARGB(255, 96, 249, 0),
        ),
    scaffoldBackgroundColor: Colors.white);
