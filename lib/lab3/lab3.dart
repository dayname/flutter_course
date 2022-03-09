import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override

  bool isOpened = true;
  bool isChanged = true;
  int counter = 0;
  bool isHere = true;

  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(
          'Lab 3',
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: AnimatedContainer(
        margin: EdgeInsets.all(20),
        duration: Duration(milliseconds: 450),
        width: screenWidth,
        height:  isOpened ? screenHeight : 60,
        color: Colors.indigo,
        child: Stack(
          children: [
            Container(
              height: 60,
              padding: EdgeInsets.symmetric(horizontal: 16),
              color: Colors.yellow,
              child: InkWell(
                onTap: (){
                  setState(() {
                    isOpened =! isOpened;
                  });
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Text(
                          'Click to Expand',
                          style: TextStyle(fontSize: 18),
                        )),
                    Icon(isOpened ? Icons.keyboard_arrow_down: Icons.keyboard_arrow_up),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    changeShapes(screenWidth),
                    flutterChanger(screenWidth),
                    showHide(screenWidth),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget changeShapes(double width) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: InkWell(
          onTap: (){
            setState(() {
              isChanged =! isChanged;
            });
          },
          child: Container(
              margin: EdgeInsets.all(8),
              color: Colors.white,
              width: width,
              height: 150,
              /// ********** Do changes in child below ********** ///
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          color: isChanged ? Colors.blue : Colors.red,
                          shape: isChanged ? BoxShape.circle : BoxShape.rectangle,
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: isChanged ? Colors.red : Colors.blue,
                        shape: isChanged ? BoxShape.rectangle : BoxShape.circle,
                      ),
                    ),
                  ],
                ),
              )
      ),
        ),
    )
    );
  }
  Widget flutterChanger(double width) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Container(
            margin: EdgeInsets.all(8),
            color: Colors.white,
            width: width,
            height: 150,
            /// ********** Do changes in child below ********** ///
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlutterLogo(style: counter == 0 ? FlutterLogoStyle.markOnly : counter == 1 ? FlutterLogoStyle.horizontal : FlutterLogoStyle.stacked, size: 125,),
                  InkWell(
                      onTap: (){
                        setState(() {
                          if (counter < 2)
                            counter++;
                          else
                            counter = 0;
                        });
                      },
                      child: Icon(Icons.change_circle, size: 50, color: Colors.deepPurple,)),

                ],),
            ),
      ),
    )
    );
  }
  Widget showHide(double width) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Container(
            margin: EdgeInsets.all(8),
            color: Colors.white,
            width: width,
            height: 150,
            /// ********** Do changes in child below ********** ///
            child: isHere ? Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.favorite, size: 120, color: Colors.red),
                  InkWell(onTap: (){setState(() {
                    isHere =! isHere;
                  });},child: Icon(Icons.lock_outline, size: 60, color: Colors.purple)),
                ],
              ),
            ) : Row(
              children: [
                InkWell(onTap: () {
                  setState(() {
                    isHere =! isHere;
                  });
                },child: Padding(
                  padding: const EdgeInsets.only(left: 180),
                  child: Icon(Icons.lock_open_outlined, size: 60, color: Colors.purple,),
                )),
              ],
            )
        ),
      ),
    );
  }


}