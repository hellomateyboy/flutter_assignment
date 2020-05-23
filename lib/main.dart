// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';
import 'package:flutterassignment/text.dart';
import 'package:flutterassignment/textcontrol.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  String _appText = "This is the first text";

  void _changeText(String newText) {
    setState(() {
      _appText = newText;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Assignment'),
          ),
          body: Container(
            width: double.infinity,
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                AppText(
                  appText: _appText,
                ),
                TextControl(changeText: _changeText)
              ],
            ),
          )),
    );
  }
}
