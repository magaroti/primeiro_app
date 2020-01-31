import 'package:flutter/material.dart';

class buscar extends StatefulWidget {
  @override
  _buscarState createState() => _buscarState();
}

class _buscarState extends State<buscar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 0.0, top: 0.0, right: 0.0),
          child: Container(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text('Buscar', style: TextStyle(fontSize: 22),),
                  )
              ),
            ),
          ),
        )
      ],
    );
  }
  }

