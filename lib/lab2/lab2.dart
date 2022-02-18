import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // to change your app color change this
        primarySwatch: Colors.amber,
      ),
      home: MyHomePage(),
    );
  }
}

/// this is a template to start building a UI
/// to start adding any UI you want change what comes after the [ body: ] tag below
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: Text(
            'Flower Shop',
            style: TextStyle(fontFamily: 'casual'),
          ),
          /*******************--[focus here 🧐]--*******************/

        ),
        body: ListView(
          children: <Widget>[
            /*******************--[focus here 🧐]--*******************/
            flowerDetails(context),
          ],
        ));
  }
}

Widget flowerDetails(BuildContext context) {
  return Container(
    padding: EdgeInsets.all(20),
    color: Colors.amber,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        imageGroup(),
        titleGroup(),
        iconGroup(),
        textGroup(),
        buttonGroup(),
      ],
    ),
  );
}

/// Image URL
/// https://newevolutiondesigns.com/images/freebies/yellow-wallpaper-12.jpg

Widget imageGroup() {
  return Image.network(
    "https://newevolutiondesigns.com/images/freebies/yellow-wallpaper-12.jpg",
  );
}

Widget titleGroup() {
  return Container(
    padding: EdgeInsets.all(16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Sunny Flowers',
          style: TextStyle(
            fontSize: 50,
            fontFamily: 'cursive',
          ),
        ),
        Text(
          "12 dosen",
          style: TextStyle(fontWeight: FontWeight.w400, color: Colors.black45),
        )
      ],
    ),
  );
}

Widget iconGroup() {
  return Container(
    padding: EdgeInsets.all(16),
    child: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: const [
        Icon(
          Icons.share,
          color: Colors.indigo,
          size: 40,
        ),
        Icon(
          Icons.favorite,
          color: Colors.indigo,
          size: 40,
        ),
      ],
    ),
  );
}

/// here is the text to copy
///Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
Widget textGroup() {
  return Container(
    padding: EdgeInsets.all(5),
    child: Text(
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s",
      style: TextStyle(
        color: Colors.black45,
        fontFamily: 'casual',
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}

Widget buttonGroup() {
  return Container(
    padding: EdgeInsets.all(8),
    child: Center(
      child: ElevatedButton(
        onLongPress: () {
          print("on Long Pressed");
        },
        onPressed: () {
          print("on Pressed");
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Icon(
              Icons.add_shopping_cart,
              color: Colors.white,
              size: 25,
            ),
            Text(
              "ADD TO CART",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ],
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.indigo,
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 80),
          elevation: 10,
          shape: StadiumBorder(),
        ),
      ),
    ),
  );
}
