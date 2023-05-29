import 'package:flutter/material.dart';
import 'package:mangooz/Login.dart';
import 'package:mangooz/Register.dart';
import 'package:mangooz/Home.dart';
import 'package:mangooz/Splash.dart';
import 'package:mangooz/mangoscanner.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'Splash',
    routes:{
      'Login': (context)=>MyLogin(),
      'Register':(context)=>RegisterUser(),
      'Home':(context)=>HomeApp(),
      'mangoscanner':(context)=>mangopicker()
    },
    home: Splash(),
  ));
}

