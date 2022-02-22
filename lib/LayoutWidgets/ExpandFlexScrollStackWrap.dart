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
        padding: EdgeInsets.all(8),
    color: Colors.grey,
    );
  }

  Container Aspectratio1() {
    return Container(
      padding: EdgeInsets.all(8),
      color: Colors.grey,
      height: 390,
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 4/3,
            child: Image.network(
              "https://upload.wikimedia.org/wikipedia/commons/3/3f/HST-SM4.jpeg",
              fit: BoxFit.cover,
            ),
          ),
          Text(
            "Hubble",
            style: TextStyle(
              fontSize: 50,
              fontFamily: 'cursive',
            ),
          )
        ],
      ));
  }

  Wrap wrap1() {
    return Wrap(
      spacing: 10,
      children: [
        Image.network(
          "https://upload.wikimedia.org/wikipedia/commons/3/3f/HST-SM4.jpeg",
          width: 175,
          height: 175,
          fit: BoxFit.cover,
        ),
        Image.network(
          "https://upload.wikimedia.org/wikipedia/commons/3/3f/HST-SM4.jpeg",
          width: 175,
          height: 175,
          fit: BoxFit.cover,
        ),
        Image.network(
          "https://upload.wikimedia.org/wikipedia/commons/3/3f/HST-SM4.jpeg",
          width: 175,
          height: 175,
          fit: BoxFit.cover,
        ),
        Image.network(
          "https://upload.wikimedia.org/wikipedia/commons/3/3f/HST-SM4.jpeg",
          width: 175,
          height: 175,
          fit: BoxFit.cover,
        ),
      ],
    );
  }

  Stack stack1() {
    return Stack(
      children: [
        Image.network(
          "https://upload.wikimedia.org/wikipedia/commons/3/3f/HST-SM4.jpeg",
          height: 300,
          fit: BoxFit.contain,
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            color: Colors.grey,
            child: Text(
              "Hubble",
              style: TextStyle(
                fontFamily: 'cursive',
                fontSize: 60,
              ),
            ),
          ),
        )
      ],
    );
  }

  Scrollbar scrollbar1() {
    return Scrollbar(
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                Icon(
                  Icons.android,
                  size: 50,
                ),
                Icon(
                  Icons.android,
                  size: 50,
                ),
                Icon(
                  Icons.android,
                  size: 50,
                ),
                Icon(
                  Icons.android,
                  size: 50,
                ),
                Icon(
                  Icons.android,
                  size: 50,
                ),
                Icon(
                  Icons.android,
                  size: 50,
                ),
                Icon(
                  Icons.android,
                  size: 50,
                ),
                Icon(
                  Icons.android,
                  size: 50,
                ),
                Icon(
                  Icons.android,
                  size: 50,
                ),
                Icon(
                  Icons.android,
                  size: 50,
                ),
                Icon(
                  Icons.android,
                  size: 50,
                ),
                Icon(
                  Icons.android,
                  size: 50,
                ),
                Icon(
                  Icons.android,
                  size: 50,
                ),
                Icon(
                  Icons.android,
                  size: 50,
                ),
                Icon(
                  Icons.android,
                  size: 50,
                ),
              ],
            )));
  }
}
