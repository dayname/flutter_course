import 'package:flutter/material.dart';

void main(){
  runApp(StatefulWidgetTemplate());
}

class StatefulWidgetTemplate extends StatefulWidget {
  const StatefulWidgetTemplate({Key? key}) : super(key: key);

  @override
  _StatefulWidgetTemplateState createState() => _StatefulWidgetTemplateState();
}

class _StatefulWidgetTemplateState extends State<StatefulWidgetTemplate> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}