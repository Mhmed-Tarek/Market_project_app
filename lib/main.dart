import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:market_app/screens/start/StartScreen.dart';
import 'package:market_app/screens/home/home_screen.dart';
import 'package:market_app/screens/product/product_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Market App.. sUck',

      theme: ThemeData(
          backgroundColor: Colors.red,
        fontFamily: "Metropolis",
        textTheme: TextTheme(
            bodyText2: TextStyle(
              height: 0.9,
            )),

        // This is the theme of your application.
       //   const color = const Color();

          // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.deepPurple,
      ),
      //home: ProductScreen( "320", "Desks", "Desk","https://i.imgur.com/eEwPDb0.jpg" ) ,
      home: StartScreen(  ) ,
    );
  }
}


