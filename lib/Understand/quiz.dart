import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    theme: ThemeData(
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.red,
      )
    ),
  home: MyAppHome(),
  );
  }
}

class MyAppHome extends StatelessWidget {
  const MyAppHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {},),
      appBar: AppBar(
        title: Text("Flutter course"),
        leading: Icon(Icons.android),
      ),
      body: MyWidget(),

    );
  }

  MyWidget() {
    return Container(
      height: 400,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FlutterLogo(size: 300, style: FlutterLogoStyle.horizontal,),
            ElevatedButton(onPressed: () {}, child: Text("Enroll to course"),
            style: ElevatedButton.styleFrom(primary: Colors.red,),),
          ],


        ),
      ),
    );
  }
}

