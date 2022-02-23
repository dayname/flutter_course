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
          accentColor: Colors.green,
        )),
        home: MyAppHome());
  }
}

class MyAppHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ),
        appBar: AppBar(
          title: Text("App Title"),
          leading: Icon(Icons.android),
        ),
        body: hello());
  }

  Text hello() {
    return Text('Hello',
          style: TextStyle(
            color: Colors.lime,
            fontSize: 100,
          )
    );
  }
}

class MySecondWidget extends StatelessWidget {
  const MySecondWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.whatshot,
      size: 100,
      color: Colors.deepOrangeAccent,
    );
  }
}
