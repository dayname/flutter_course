import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../User.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.deepPurple,
          accentColor: Colors.deepOrangeAccent,
        ),
      ),
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
  bool isSt = true;
  List<User> users = [];

  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.person_add),
      ),
      appBar: AppBar(
        title: Text(
          'Users List',
          style: TextStyle(fontSize: 23),
        ),
      ),
      body: users.isEmpty ? buildEmptyView() : createListView(),
    );
  }

  Widget createListView() {
    return ListView.builder(
        itemCount: users.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              ListTile(
                  title: Text(users[index].name, style: TextStyle(fontSize: 14)),
                  subtitle: Text(users[index].email),
                  leading: Icon(Icons.person),
              ),
              Divider(),
            ],
          );
        });
  }

  Widget buildEmptyView() {
    return Center(
      child: Column(
        children: [
          FlutterLogo(
            size: 200,
            style: isSt ? FlutterLogoStyle.stacked : FlutterLogoStyle.markOnly,
          ),
          ElevatedButton(
            onPressed: () {
              getUsers();
            },
            child: Text(
              "GET USERS",
              style: TextStyle(fontSize: 17),
            ),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }

  getUsers() async {
    print("Connecting API");
    Uri url = Uri.parse("https://gorest.co.in/public/v2/users");
    var response = await http.get(url);
    if (response.statusCode == 200) {
      print(response.body);


      var list = jsonDecode(response.body) as List;
      list.forEach((element) {
        User user = User.fromJson(element);
        print(user.name);
        users.add(user);
      });
      setState(() {});
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error ${response.reasonPhrase}')));
    }
  }

  testFutures() {
    print("I will test futures");
    Future.delayed(Duration(seconds: 2))
        .then((value) => setState(() {
              isSt = !isSt;
            }))
        .onError((error, stackTrace) => null);
  }
}

//   testFutures1() async{
//   print("I will test futures");
//   await Future.delayed(Duration(seconds: 2));
//   setState(() {
//     isSt =! isSt;
//   });
// }
