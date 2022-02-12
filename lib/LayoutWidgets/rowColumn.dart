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
        Container(
          height: 60,
          width: 300,
          margin: EdgeInsets.only(left: 70),
          decoration: BoxDecoration(
          color: Colors.orangeAccent,
          border: Border.all(
            color: Colors.indigo,
            width: 5,
          )
          ),

          child: Row (
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Icon(Icons.whatshot_rounded, color: Colors.redAccent,),
              Icon(Icons.android, color: Colors.green,),
              Icon(Icons.whatshot_rounded, color: Colors.redAccent,),
            ],
          ),
        )
        /*******************--[focus here 🧐]--*******************/
    );
  }

  Container column() {
    return Container(
        color: Colors.black45,
        width: 300,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const
          [
            Text("l", style: TextStyle(color: Colors.red, fontSize:         50,),),
            Icon( Icons.favorite, color: Colors.red, size:                  50,),
            Text("Flutter", style: TextStyle( color: Colors.cyan, fontSize: 50,),),
            FlutterLogo(size: 50),
          ]
        ),
      );
  }

  Container row() {
    return Container(
        height: 300,
        color: Colors.blueGrey,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            Icon(Icons.share, color: Colors.cyanAccent, size:      51,),
            Icon(Icons.message, color: Colors.greenAccent, size:   51,),
            Icon(Icons.favorite, color: Colors.orangeAccent, size: 51,),
            Icon(Icons.delete, color: Colors.red, size: 50,),
          ],
        ),
      );
  }
}
