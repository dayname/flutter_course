import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyAppHome(),
    );
  }
}

class MyAppHome extends StatelessWidget {
  const MyAppHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practice make you better"),
        leading: Icon(Icons.done),
      ),
      body: MyWidget(),
    );
  }
}

MyWidget() {
  return stack1();
}

Container stack1() {
  return Container(
  height: 400,
  padding: EdgeInsets.all(8),
  color: Colors.teal,
  child: Stack(
    children: [
      Align(
          alignment: Alignment.topLeft,
          child: Container(
            margin: EdgeInsets.all(16),
            color: Colors.yellow,
            width:  125,
            height: 125,
          )),
      Align(
          alignment: Alignment.center,
          child: Center(
              child: Container(
                  padding: EdgeInsets.all(65),
                  child: Stack(children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: EdgeInsets.all(8),
                          color: Colors.cyan,
                          width:  125,
                          height: 125,
                        ))
                  ])))),
    ],
  ),
);
}

Scrollbar scrollbar1() {
  return Scrollbar(
    child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          FlutterLogo(
            size: 90,
          ),
          Text(
            "SingleChildScrollView",
            style: TextStyle(
              color: Colors.indigoAccent,
              fontSize: 30,
            ),
          ),
          Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has surv Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survive Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has surviveled it to make a type specimen book. It has surviveived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    ),
  );
}

Column expand1() {
  return Column(
    children: [
      Expanded(
        child: Container(
          child: Center(
              child: Text(
            "1",
            style: TextStyle(fontSize: 20),
          )),
          color: Colors.green,
          width: 300,
        ),
      ),
      Expanded(
        child: Container(
          child: Center(
              child: Text(
            "2",
            style: TextStyle(fontSize: 20),
          )),
          color: Colors.indigoAccent,
          width: 300,
        ),
        flex: 10,
      ),
      Expanded(
        child: Container(
          child: Center(
              child: Text(
            "3",
            style: TextStyle(fontSize: 20),
          )),
          color: Colors.yellow,
          width: 300,
        ),
        flex: 4,
      ),
    ],
  );
}
