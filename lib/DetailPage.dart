import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    const String titleText = "Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. "
        "Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride "
        "from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to "
        "the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include "
        "rowing, and riding the summer toboggan run.";

    Column createButtonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;
      return new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Icon(icon, color: color,),
          new Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: new Text(
              label,
              style: new TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Widget buttonSection = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          createButtonColumn(Icons.cake, "Cake"),
          createButtonColumn(Icons.star, "Star"),
          createButtonColumn(Icons.label, "Label"),
        ],
      ),
    );
    
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(30.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Container(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: new Text(
                        "First line text !!!!!",
                        style: new TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  new Text(
                    "Second Line Text !!!!",
                    style: new TextStyle(
                      color: Colors.grey[500],
                    ),
                  ),
                ],
          )),
          new Icon(
            Icons.star,
            color:Colors.purple[500],
          ),
          new Text("666"),
        ],
      ),
    );

    Widget textSection = new Container(
      padding: const EdgeInsets.all(33.0),
      child: new Text(
        titleText,
        softWrap: true,
      ),
    );

    return new MaterialApp(
      home: new Scaffold(
        body: new ListView(
          children: <Widget>[
            new Image.asset(
                "images/V_small.jpg",
              width: 600.0,
              height: 300.0,
              fit: BoxFit.cover,
            ),
            textSection,
            buttonSection,
            titleSection,
          ],
        ),
      ),
    );
  }
}