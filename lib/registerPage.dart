import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class registerPage extends StatefulWidget 
{
  const registerPage({Key? key}) : super(key: key);

  @override
  State<registerPage> createState() => _registerPageState();
}

class _registerPageState extends State<registerPage> 
{
  bool _isObscure = true;
  bool _isObscure_ = true;
  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.pink),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Cadastro"),
          leading: 
          IconButton(onPressed: () {Navigator.pushNamed(context, '/');}, 
          icon: Icon(Icons.arrow_back_rounded),),
          actions: <Widget>[
            Image.asset("../assets/vivo.png")
          ],
        ),
        body: Column(
        children: [
            Container(height: 15.0,), 
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Digite seu primeiro nome",
            ),),
            Container(height: 15.0,), 
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Digite seu sobrenome",
            ),),
            Container(height: 15.0,), 
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Digite seu email",
            ),),
            Container(height: 20.0,), 
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Crie uma senha",
              suffixIcon: IconButton(
                icon: Icon(
                  _isObscure ? Icons.visibility : Icons.visibility_off
                ),
                onPressed: () {
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                },
              )
            ),
            obscureText: _isObscure),
            Container(height: 20.0,), 
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Confirme a senha",
              suffixIcon: IconButton(
                icon: Icon(
                  _isObscure_ ? Icons.visibility : Icons.visibility_off
                ),
                onPressed: () {
                  setState(() {
                    _isObscure_ = !_isObscure_;
                  });
                },
              )

            ),
            obscureText: _isObscure_),
            Container(height: 20.0,),
            Container(
              width: double.infinity,
              height: 45.0,
              child: ElevatedButton(
                onPressed: () {Navigator.pushNamed(context, '/login');}, 
                child: Text("Cadastrar"),
                style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            )
                          )
                        ),
              ),
              )

        ],)
      )
    );
    
  }
}