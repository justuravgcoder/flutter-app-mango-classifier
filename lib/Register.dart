import 'package:flutter/material.dart';

class RegisterUser extends StatefulWidget {
  const RegisterUser({Key? key}) : super(key: key);

  @override
  State<RegisterUser> createState() => _RegisterUserState();
}

class _RegisterUserState extends State<RegisterUser> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/register.png'),fit: BoxFit.cover
            )),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(
                  padding: EdgeInsets.only(left: 35,top: 100),
                  child:Text("Register Yourself And Become One Of The First To Use Mangooz!",
                    style:TextStyle(
                        color:Colors.white,
                        fontSize: 33,
                        fontFamily: 'Poppins'

                    ) ,)
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.33,right: 20,left: 20),
                  child: Column(
                    children: [
                      Center(child: Text('Mangooz',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 36
                        ),)),
                      Center(child: Text('Know What Is Inside Your Mango!',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20
                        ),)),
                      SizedBox(height: 20),
                      TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: 'Name',
                            hintStyle: TextStyle(fontFamily: 'Poppins'),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)
                            )
                        ),
                      ),
                      SizedBox(height: 30),
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
                                borderRadius: BorderRadius.circular(10)
                            )
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Center(
                            child: Container(
                                child:TextButton(onPressed: () {
                                  Navigator.pushNamed(context, 'Register');
                                },
                                    child: Text('Sign up',
                                      style:TextStyle(
                                          fontSize: 25,
                                          fontFamily: 'Poppins',
                                          color: Colors.black
                                      ),
                                    ),
                                    style: ButtonStyle(
                                      foregroundColor: MaterialStateProperty.all<Color>(Color(0xff4c505b)),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(20.0),
                                              side: BorderSide(color: Colors.black)
                                          )
                                      ),)
                                )
                            ),
                          )

                        ],
                      ),
                    Row(children: [
                      Container(
                        padding: EdgeInsets.only(top: 120,left: 208),
                        child: Text('Product Of: \nShurahbeel Peerzada \nESTD: 2023',style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold
                      ),))
                    ],)
                      
                    
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
