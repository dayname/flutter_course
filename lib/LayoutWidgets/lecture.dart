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
        leading: const Icon(Icons.android_sharp),
        title: const Text('App Title'),
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
          container3(),

      /*******************--[focus here 🧐]--*******************/
    );
  }

  Container container3() {
    return Container(
      color: Colors.yellow,
      child: Center(
        child: Icon(
          Icons.done,
          size: 200,
          color: Colors.deepOrange,
        ),
      ),
    );
  }

  Container container1() {
    return Container(
      width: 200,
      height: 60,
      decoration: BoxDecoration(
          color: Colors.deepPurpleAccent,
          border: Border.all(
            color: Colors.black,
            width: 4,
          ),
          shape: BoxShape.rectangle),
      // space between parent and child
      padding: EdgeInsets.only(top: 13, left: 30),
      // space between parent and surround it
      margin: EdgeInsets.only(top: 10, left: 40),

      child: Text(
        "Quiz Container",
        style: TextStyle(
          fontFamily: 'casual',
          fontSize: 20,
        ),
      ),
    );
  }
}
