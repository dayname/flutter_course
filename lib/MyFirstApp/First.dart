import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.teal,
        )
      ),
      home: MyHomePage(),
    );
  }
}
int counter = 0;
class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
        body: Container( height: 700,
          child: Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              if (counter == 0)
                Container(
                  height: 300,
                  width: 300,
                  child: Image.asset("assets/данил.jpg", fit: BoxFit.cover)),
              if (counter == 1)
                Container(
                    height: 300,
                    width: 300,
                    child: Image.asset("assets/тимур.jpg", fit: BoxFit.cover)),
              if (counter == 2)
                Container(
                    height: 300,
                    width: 300,
                    child: Image.asset("assets/тузик.jpg", fit: BoxFit.cover)),
              if (counter == 3)
                Container(
                    height: 300,
                    width: 300,
                    child: Image.asset("assets/Шершень.jpg", fit: BoxFit.cover)),
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                ElevatedButton(onPressed:() {setState(() {
                  counter = 0;
                });}, child: Text("Данил",     style: TextStyle(fontSize: 24),), style: ElevatedButton.styleFrom(padding: EdgeInsets.all(30),),),
                ElevatedButton(onPressed:() {setState(() {
                  counter = 1;
                });}, child: Text("Мурти",     style: TextStyle(fontSize: 24),), style: ElevatedButton.styleFrom(padding: EdgeInsets.all(30),),),
              ],),
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed:() {setState(() {
                    counter = 2;
                  });}, child: Text("Тузик",   style: TextStyle(fontSize: 24),), style: ElevatedButton.styleFrom(padding: EdgeInsets.all(30),)),
                  ElevatedButton(onPressed:() {setState(() {
                    counter = 3;
                  });}, child: Text("Шершень", style: TextStyle(fontSize: 24),), style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),)),
                ],)
            ],
          ),
        ),
    );
  }
}