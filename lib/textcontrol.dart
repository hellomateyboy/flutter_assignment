import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function changeText;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      onPressed: () => changeText("Other text"),
      child: Text("Press to change text"),
    );
  }

  TextControl({this.changeText});
}
