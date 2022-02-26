import 'package:flutter/material.dart';

void main() => runApp(StatefulWidgetTemplate());

class StatefulWidgetTemplate extends StatefulWidget {
  const StatefulWidgetTemplate({Key? key}) : super(key: key);

  @override
  _StatefulWidgetTemplateState createState() => _StatefulWidgetTemplateState();
}

class _StatefulWidgetTemplateState extends State<StatefulWidgetTemplate> {
  double counter = 100;
  Color textColor = Colors.red;

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(),
          body: anim1()),
    );
  }

  Center anim1() {
    return Center(
          child: Column(
            children: [
              AnimatedContainer(
                margin: EdgeInsets.all(16),
                duration: Duration(milliseconds: 450),
                color: counter > 120 ? textColor : Colors.blue,
                width: 100 + counter,
                height: 100 + counter,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        counter += 5;
                      });
                    },
                    child: Icon(Icons.add),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        counter -= 5;
                      });
                    },
                    child: Icon(Icons.remove),
                  ),
                ],
              ),
            ],
          ),
        );
  }

  Counterrrr() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                counter++;
              });
            },
            child: Icon(Icons.add),
          ),
          InkWell(
            onLongPress: () {
              counter += 10;
              setState(() {});
            },
            onTap: () {
              counter = 0;
              setState(() {});
            },
            child: Text(
              "$counter",
              style: TextStyle(
                fontSize: 50,
                color: counter < 0 ? textColor : Colors.black45,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                counter--;
              });
            },
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
