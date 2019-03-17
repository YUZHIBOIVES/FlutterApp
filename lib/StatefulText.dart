import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class StatefulText extends StatefulWidget {
  StatefulText({Key key}) : super(key: key);
  
  @override
  _TextState createState() {
    return new _TextState();
  }
}

class _TextState extends State<StatefulText> {
  bool _active = false;
  
  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: _handleTap,
      child: new Container(
        child: new Center(
          child: new Text(
            _active ? "Active" : "Inactive",
            style: new TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        width: 200.0,
        height: 200.0,
        decoration: new BoxDecoration(
          color: _active ? Colors.lightBlue[800] : Colors.grey[600],
        ),
      ),
    );
  }
}