import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:primeiro/button_retangulo_onpresses.dart';
import 'package:primeiro/menu_principal.dart';
import 'package:primeiro/page_createaccont.dart';

void main() => runApp(LoginApp());

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Challenge',
      theme: ThemeData(
          primarySwatch: Colors.deepPurple
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
bool  _Mostrar_Senha = false;




  @override

  void portraitModeOnly() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    portraitModeOnly();
    return Scaffold(
      body: SingleChildScrollView(
            child: Container(
            height: MediaQuery.of(context).size.height,
     child: Container(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2.5,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.deepPurple,
                      Colors.purple,
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(200),
                      bottomLeft: Radius.circular(200)
                  )

              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Spacer(),
                  Align(
                    alignment: Alignment.center,
                    child: Icon(Icons.account_circle,
                      size: 90,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),

                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          bottom: 100,
                          right: 155
                      ),
                      child: Text('Login',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 80),
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    height: 45,
                    padding: EdgeInsets.only(
                        top: 2,left: 15, right: 16, bottom: 3
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(50)
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5
                          )
                        ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(Icons.email,
                          color: Colors.grey,
                        ),
                        hintText: 'Email',
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    height: 45,
                    margin: EdgeInsets.only(top: 30),
                    padding: EdgeInsets.only(
                        top: 2,left: 15, right: 8, bottom: 3
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(80)
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5
                          )
                        ]
                    ),
                    child: TextField(
                      obscureText: !this._Mostrar_Senha,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(Icons.vpn_key,
                          color: Colors.grey,
                        ),
                         suffixIcon: IconButton(
                           icon: Icon(
                             Icons.remove_red_eye,
                             color: this._Mostrar_Senha ? Colors.deepPurple: Colors.grey,
                           ),
                           onPressed: () {
                             setState(() => this._Mostrar_Senha = !this._Mostrar_Senha);{
                             };
                           },
                         ),
                        hintText: 'Senha',
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 16, right: 32
                      ),
                      child: Text('Forgot Password ?',
                        style: TextStyle(
                            color: Colors.grey
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  FancyButton(onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CreateAccont()),
                    );
                  },),
                  Botao_Entrar(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
  },),

                ],
              ),
            )
          ],
        ),
      ),
    ),
    ),
    );
  }
}

class Botao_Entrar extends StatelessWidget {
  Botao_Entrar({@required this.onPressed});
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        fillColor: Colors.deepPurple,
        splashColor: Colors.purple,
        child: Padding(
        padding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 120.0,
    ),
    child: Row(
    mainAxisSize: MainAxisSize.min,
    children: const <Widget>[
    Icon(
    Icons.account_circle,
    color: Colors.white,
    ),
      Text(
        "Entrar ",
        style: TextStyle(
          color: Colors.white,
        ),
      ),

    ],
    ),
    ),
      onPressed: onPressed,
      shape: const StadiumBorder(),
    );
  }
}



