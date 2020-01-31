import 'package:flutter/material.dart';

class perfil extends StatefulWidget {
  @override
  _perfilState createState() => _perfilState();
}

class _perfilState extends State<perfil> {
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
                    child: Text('Perfil', style: TextStyle(fontSize: 22),),
                  )
              ),
            ),
          ),
        )
      ],
    );
  }
}

