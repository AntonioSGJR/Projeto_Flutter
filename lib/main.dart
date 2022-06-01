import 'package:flutter/material.dart';
import 'package:login/initialPage.dart';
import 'package:login/loginPage.dart';
import 'package:login/registerPage.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: 
    {
      '/': ((context) => const initialPage()),
       '/login': ((context) => const loginPage()),
       '/cadastro':((context) => const registerPage())
    }
  ));
}
