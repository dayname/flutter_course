import 'package:flutter/material.dart';

void main() => runApp(Lab1());

/// this is your APP Main screen configuration
class Lab1 extends StatelessWidget {
  Lab1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LAb1HomePage(),
    );
  }
}

/// this is a template to start building a UI
/// to start adding any UI you want change what comes after the [ body: ] tag below
class LAb1HomePage extends StatelessWidget {
  LAb1HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff4f4f4),
      /*******************--[focus here 🧐]--*******************/
      appBar: AppBar(
        leading: const Icon(Icons.stars),
        title: const Text('Lab 1'),
        backgroundColor: Colors.teal,
        elevation: 4,
      ),
      body: myWidget(),
      /*******************--[focus here 🧐]--*******************/
    );
  }

  Widget myWidget() {
    return SingleChildScrollView(
      child: Column(
        children: [
          /*******************--[focus here 🧐]--*******************/
          SizedBox(height: 20,),
          exercise1(),
          SizedBox(height: 20,),
          exercise2(),
          SizedBox(height: 20,),
          exercise3(),
          SizedBox(height: 20,),
          exercise4(),
          SizedBox(height: 20,),
          exercise5(),
          /*******************--[focus here 🧐]--*******************/
        ],
      ),
    );
  }

  /// TODO: Implement Exercises below as per the handed Document
  Widget exercise1() {
    return Text(
      'Welcome to lab1',
      style: TextStyle(
        fontSize: 30,
        color: Colors.greenAccent,
        fontFamily: "monospace",
        fontStyle: FontStyle.italic,
        letterSpacing: 6,
        fontWeight: FontWeight.w900,
        backgroundColor: Colors.black38,
      ),
    );
  }

  Widget exercise2() {
    return Icon(
      Icons.share_sharp,
      size: 200,
      color: Colors.blue,
      textDirection: TextDirection.rtl,
    );
  }

  /// TODO : print on the screen on Pressed when clicking on the button, and print on Long Pressed when long clivk to Button
  Widget exercise3() {
    return ElevatedButton(
      onLongPress: () {
        print("on Long Pressed");
      },
      onPressed: () {
        print("on Pressed");
      },
      child: Text(
        "Click here", style: TextStyle(fontSize: 24, color: Colors.yellow),),
      style: ElevatedButton.styleFrom(
        primary: Colors.indigoAccent,
        padding: EdgeInsets.symmetric(vertical: 16,horizontal: 80),
        elevation: 10,
        shape: StadiumBorder(),
      ),
    );
  }

  Widget exercise4() {
    return ElevatedButton(
      onPressed: () {
        print("on Pressed");
      },
      child: Icon(Icons.favorite,color: Colors.greenAccent,),
      style: ElevatedButton.styleFrom(
        primary: Colors.black,
        padding: EdgeInsets.all(16),
        elevation: 11,
        shape: CircleBorder(),
      ),
    );
  }

  Widget exercise5() {
    return OutlinedButton(
      onPressed: (){},
      child: Text(
        "Start button", style: TextStyle(fontSize: 24, color: Colors.deepOrangeAccent),),
      style: OutlinedButton.styleFrom(
          primary: Colors.indigoAccent,
          padding: EdgeInsets.symmetric(vertical: 16,horizontal: 80),
          side: BorderSide(color: Colors.amber.shade400,width: 2)
      ),
    );
  }
}