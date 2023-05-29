import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/login.png'),fit: BoxFit.cover
        )),
        child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35,top: 100),
              child:Text("The World's First Mango Checker Powered By AI",
                style:TextStyle(
                  color:Colors.white,
                  fontSize: 33,
                  fontFamily: 'Poppins'

                ) ,)
            ),

            Container(
              padding: EdgeInsets.only(bottom: 100),
              child: Center(child: Text('Mangooz',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 36,
                  color:Colors.white,
                ),)),
            ),

            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.5,right: 20,left: 20),
                child: Column(
                  children: [
                    Center(child: Text('How Medium Rare are your Mangoes?',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      color:Colors.white
                    ),)),
                    SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Email',
                        hintStyle: TextStyle(fontFamily: 'Poppins'),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                    ),
                    SizedBox(height: 30),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Password',
                          hintStyle: TextStyle(fontFamily: 'Poppins'),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),

                          )
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          //padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.25),
                          child:TextButton(onPressed: () {
                            Navigator.pushNamed(context, 'mangoscanner');
                          },
                            child: Text('Login',
                              style:TextStyle(
                                  fontSize: 25,
                                  fontFamily: 'Poppins',
                                  color: Colors.white,



                              ),
                            ),
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(Color(0xff4c505b)),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      side: BorderSide(color: Colors.white)
                            )
                            ),)
                        ),),
                        SizedBox(width: 20),
                        Container(
                            child:TextButton(onPressed: () {
                              Navigator.pushNamed(context, 'Register');
                            },
                                child: Text('Sign up',
                                  style:TextStyle(
                                      fontSize: 25,
                                      fontFamily: 'Poppins',
                                      color: Colors.white
                                  ),
                                ),
                                style: ButtonStyle(
                                  foregroundColor: MaterialStateProperty.all<Color>(Color(0xff4c505b)),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20.0),
                                          side: BorderSide(color: Colors.white)
                                      )
                                  ),)
                            )
                        )

                        ],
                    )
                  ],
                ),
              ),

            )
          ],
        ),


    )


    );
  }
}
