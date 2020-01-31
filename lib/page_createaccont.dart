import 'package:flutter/material.dart';
import 'package:primeiro/button_retangulo_onpresses.dart';
import 'package:primeiro/main.dart';


class CreateAccont extends StatefulWidget {
  @override
  _CreateAccontState createState() => _CreateAccontState();
}

class _CreateAccontState extends State<CreateAccont> {
  bool _Mostrar_Senha = false;
  bool _exibirCampo = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
    child: Card(
      child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  style: new TextStyle(color: Colors.black,fontSize: 20),
                  decoration: InputDecoration(
                      icon: Icon(Icons.person),
                      labelText: "Usuario",
                      labelStyle: TextStyle(color: Colors.deepPurple)),
                ),
                TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  style: new TextStyle(color: Colors.black, fontSize: 20),
                  decoration: InputDecoration(
                    icon: Icon(Icons.people),
                    labelText: "Nome",
                    labelStyle: TextStyle(color: Colors.deepPurple),
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  style: new TextStyle(color: Colors.black, fontSize: 20),
                  decoration: InputDecoration(
                    icon: Icon(Icons.people),
                    labelText: "Sobrenome",
                    labelStyle: TextStyle(color: Colors.deepPurple),
                  ),
                ),
                TextFormField(
                  obscureText: !this._Mostrar_Senha,
                  keyboardType: TextInputType.text,
                  style: new TextStyle(color: Colors.black, fontSize: 20),
                  decoration: InputDecoration(
                    icon: Icon(Icons.security),
                    labelText: "Senha",
                    labelStyle: TextStyle(color: Colors.deepPurple),

                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.remove_red_eye,
                        color: this._Mostrar_Senha ? Colors.blue: Colors.grey,
                      ),
                      onPressed: () {
                        setState(() {
                          this._Mostrar_Senha = !this._Mostrar_Senha;
                        });
                      },
                    ),

                  ),
                ),
                 _exibirCampo ? TextFormField(
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  style: new TextStyle(color: Colors.black, fontSize: 20),
                  decoration: InputDecoration(
                    icon: Icon(Icons.security),
                    labelText: "Confirmar Senha",
                    labelStyle: TextStyle(color: Colors.deepPurple),
                  ),
                ) : Container(),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  color: Colors.deepPurple,
                  child: Text('Criar Conta', style: TextStyle(color: Colors.white),),
                    onPressed: (){
                    setState(() {
                      _exibirCampo = true;
                    });
                    },
                ),

              ],
            ),
          ),
      ),
    ),
    ),
    );
  }
}
