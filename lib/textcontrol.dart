import 'package:flutter/material.dart';
import 'package:flutterassignment/text.dart';

class TextControl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextControlState();
  }

}

class _TextControlState extends State<TextControl>{
  String _appText = "This is the first text";

  void _changeText(String newText) {
    setState(() {
      _appText = newText;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        AppText(
          appText: _appText,
        ),
        RaisedButton(
          onPressed: () => _changeText("Other text"),
          child: Text("Press to change text"),
        )
      ],
    );
  }
}
