import 'package:flutter/material.dart';

class NavDrawerExample extends StatelessWidget {
  const NavDrawerExample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final drawerHeader = UserAccountsDrawerHeader(
      decoration: new BoxDecoration(
          color: Colors.deepPurple
      ),
      accountName: Text('User Name'),
      accountEmail: Text('user.name@email.com'),
      currentAccountPicture: CircleAvatar(
        child: FlutterLogo(size: 42.0),
        backgroundColor: Colors.white,
      ),
      otherAccountsPictures: <Widget>[
        CircleAvatar(
          child: Text('A'),
          backgroundColor: Colors.yellow,
        ),
        CircleAvatar(
          child: Text('B'),
          backgroundColor: Colors.red,)
      ],
    );
    final drawerItems = ListView(
      children: <Widget>[
        drawerHeader,
        ListTile(
          leading: Icon(Icons.phone),
          title: Text('Contatos'),
          onTap: () => Navigator.of(context).push(_NewPage(1)),
        ),

        ListTile(
        leading: Icon(Icons.settings),
          title: Text('Configuração'),
          onTap: () => Navigator.of(context).push(_NewPage(2)),
        ),
        ListTile(
          leading: Icon(Icons.calendar_today),
          title: Text('Agenda'),
          onTap: () => Navigator.of(context).push(_NewPage(3)),
        ),
      ],
    );
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text('Conta'),
        ),
        body: Center(
          child: Text('Página Incial'),
        ), drawer: Container(
      child: Drawer(

        child: drawerItems,
      ),
    )
    );
  }
}

// <Null> means this route returns nothing.
class _NewPage extends MaterialPageRoute<Null> {
  final int _id;
  _NewPage(this._id)
      : super(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.deepPurple,

              title: Text('Contatos'),
              elevation: 1.0,
            ),
            body: Center(
              child: Text('Configuração'),
            ),
          );

        });
}
