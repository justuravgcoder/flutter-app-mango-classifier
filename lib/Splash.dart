import 'package:mangooz/Login.dart';
import 'package:mangooz/main.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    _navigatetohome();
  }
  _navigatetohome() async{
    await Future.delayed(Duration(milliseconds: 1500), (){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyLogin()));
  }
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
             Container(
               decoration: BoxDecoration(
                 image: DecorationImage(
                   image: AssetImage('assets/SplashScreen.png'),fit: BoxFit.cover
                 )
               ),
             ),
          ],
        )


    );
  }
}
