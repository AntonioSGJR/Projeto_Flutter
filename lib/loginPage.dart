import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class loginPage extends StatefulWidget 
{
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> 
{
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.pink),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login"),
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
              labelText: "Email",
            ),),
            Container(height: 20.0,), 
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Senha",
              suffixIcon: IconButton(
                icon: Icon(
                  _isObscure ? Icons.visibility : Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      _isObscure = !_isObscure;
                    });
                  },
                ),
              ),
              obscureText: _isObscure,
            ),
            Container(height: 20.0,),
            Container(
              width: double.infinity,
              height: 45.0,
              child: ElevatedButton(
                onPressed: () {Navigator.pushNamed(context, '/');}, 
                child: Text("Logar"),
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