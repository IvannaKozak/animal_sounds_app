import 'package:flutter/material.dart';
import 'main_page.dart';
import 'second_page.dart';

void main() => runApp(RainbowApp());

class RainbowApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
            elevation: 0.0,
            backgroundColor: Color.fromARGB(
                255, 216, 255, 60) //Color.fromARGB(255, 96, 249, 0),
            ),
        scaffoldBackgroundColor: Colors.white,
      ), // Define the default brightness and colors
      home: MainPage(),
      routes: {
        //'/': (context) => InputPage(),
        '/results': (context) => SecondPage(),
      },
    );
  }
}
