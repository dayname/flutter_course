import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// this is your APP Main screen configuration
class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

/// this is a template to start building a UI
/// to start adding any UI you want change what comes after the [ body: ] tag below
class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff4f4f4),
      /*******************--[focus here 🧐]--*******************/
      appBar: AppBar(
        leading: const Icon(Icons.android),
        title: const Text('App title'),
        backgroundColor: Colors.teal,
        elevation: 4,
      ),
      body: myWidget(),
      /*******************--[focus here 🧐]--*******************/
    );
  }

  Widget myWidget() {
    return Container(
        padding: EdgeInsets.all(20),
        child:
        /*******************--[focus here 🧐]--*******************/
        elevatedButton()
      /*******************--[focus here 🧐]--*******************/
    );
  }

  elevatedButton() {
    return ElevatedButton(
      child: Text(
        "Press it",
        style: TextStyle(
          color: Colors.yellow,
          fontFamily: 'casual',
          fontStyle: FontStyle.italic,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
      style: ElevatedButton.styleFrom(
          shape: StadiumBorder(),
          padding: EdgeInsets.symmetric(
            horizontal: 100,
            vertical: 5,
          )),
      onPressed: () {
        print("Press me");
      },
    );
  }

  MySecondQuiz() {
    return Icon(
      Icons.whatshot,
      color: Colors.red,
      size: 200,
    );
  }

  MyFirstQuiz() {
    return Text(
      "Your first Quiz",
      style: TextStyle(
        color: Colors.green,
        fontSize: 50,
        fontFamily: 'casual',
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w400,
        backgroundColor: Colors.limeAccent,
      ),
    );
  }

  IconButton iconButton() {
    return IconButton(
      onPressed: () {
        print("onPressed");
      },
      icon: Icon(Icons.android),
      splashColor: Colors.blue,
      color: Colors.green,
      iconSize: 150,
      padding: EdgeInsets.all(100),
    );
  }

  Image image() {
    return Image.network(
      "https://upload.wikimedia.org/wikipedia/commons/3/3f/HST-SM4.jpeg",
      height: 200,
      width: 200,
      fit: BoxFit.cover,
    );
  }
}