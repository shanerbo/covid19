import 'package:covid19/constant.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Covid-19',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: TextTheme(bodyText1: TextStyle(color: kBodyTextColor)),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: 350,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Color(0xff3383cd), Color(0xff11249f)]),
              image:
                  DecorationImage(image: AssetImage("assets/images/virus.png")),
            ),
          )
        ],
      ),
    );
  }
}
