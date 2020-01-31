import 'package:flutter/material.dart';
import 'package:primeiro/buscar.dart';
import 'package:primeiro/codigo.dart';
import 'package:primeiro/config.dart';
import 'package:primeiro/musica.dart';
import 'package:primeiro/profile.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;

  var _listaPaginas = [NavDrawerExample(), buscar(), perfil(), config(), music()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Menu'),
      ),
      body:
      _buildBody(),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.deepPurple,
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.deepPurple,
            icon: Icon(Icons.search),
            title: Text('Buscar'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.deepPurple,
            icon: Icon(Icons.person),
            title: Text('Perfil'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.deepPurple,
            icon: Icon(Icons.settings),
            title: Text('Configuração'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.deepPurple,
            icon: Icon(Icons.music_note),
            title: Text('Música'),

          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.purpleAccent,
        onTap: _onItemTapped,
      ),
    );
  }

  _buildBody(){
    return SafeArea(
      child: _listaPaginas[_selectedIndex],
    );
  }

}