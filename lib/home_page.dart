import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(8),
          child: Container(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Text('Página Inicial', style: TextStyle(fontSize: 22),),
                )
              ),
            ),
          ),
        )
      ],
    );
  }
}
