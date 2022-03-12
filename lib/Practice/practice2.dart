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
              accentColor: Colors.deepOrangeAccent)),
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
  List<User> users = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Users List"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.person_add),
      ),
      body: users.isEmpty ? ifEmpty() : ifNotEmpty(),

    );
  }

  Center ifEmpty() {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          getUsers();
        },
        child: Text("Get Users".toUpperCase()),
      ),
    );
  }

  getUsers() async {
    print("Connecting to API");
    Uri url = Uri.parse("https://gorest.co.in/public/v2/users");
    var response = await http.get(url);
    if (response.statusCode == 200) {
      print(response.body);
      var list = jsonDecode(response.body) as List;
      list.forEach((element) {
        User user = User.fromJson(element);
        users.add(user);
        print(user.name);
      });
      setState(() {});
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error ${response.reasonPhrase}')));
    }
  }

  ifNotEmpty() {
    return ListView.builder(
        itemCount: users.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              ListTile(
                title: Text(users[index].name, style: TextStyle(fontSize: 16)),
                subtitle: Text(users[index].email),
                leading: users[index].gender == "female" ? Icon(Icons.female) : Icon(Icons.male),
                trailing: users[index].status == "active" ? Icon(Icons.done, color: Colors.green,) : Icon(Icons.cancel, color: Colors.red,),),
              Divider(),
            ],
          );

        });
  }
}
