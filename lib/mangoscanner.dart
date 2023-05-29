// import 'dart:html';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;

class mangopicker extends StatefulWidget {
  const mangopicker({Key? key}) : super(key: key);
  @override
  State<mangopicker> createState() => _mangopickerState();
}

class _mangopickerState extends State<mangopicker>
{
  File? _image;
  String message = "";
  uploadimage() async{
    final request = http.MultipartRequest(
      "POST", Uri.parse("http://10.1.143.98/scan")
    );
    final headers = {"Content-type":"multipart/form-data"};
    if (_image != null)
    request.files.add(http.MultipartFile('image',_image!.readAsBytes().asStream(),_image!.lengthSync(),filename: _image!.path.split("/").last));
    request.headers.addAll(headers);
    final response = await request.send();
    http.Response res = await http.Response.fromStream(response);
    final resJson = jsonDecode(res.body) as Map<String,dynamic>;
    message = resJson["message"];
    setState(() {
      message = resJson["message"];
    });


  }
  Future getImage(ImageSource source) async{
    final image = await ImagePicker().pickImage(source: source);
    if (image == null) return;
    final tempimage = File(image.path);
    setState(() {
      this._image = tempimage;
    });
  }
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        appBar:AppBar(
          title:Text('Pick the mango of your own choice!',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12,
              )),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        body: Center(
            child: Column(
                children: [
                  SizedBox(height: 30),
                  _image != null ? Image.file(_image!, width: 250, height: 250,fit:BoxFit.cover) : Image.network('https://th.bing.com/th/id/R.56d48000affd8f4464a54081c77e0325?rik=QpGGoJ8N67fCdA&riu=http%3a%2f%2fwallsdesk.com%2fwp-content%2fuploads%2f2017%2f01%2fMango-HD-Wallpaper.jpg&ehk=oLj0XKQ46%2f9PP7Llvi2Nq0ptyu6dO%2bwOMWzrGvWU5pU%3d&risl=&pid=ImgRaw&r=0'),
                  SizedBox(height: 30),
                  CustomButton(title: 'Pick an existing mango',icon: Icons.image_rounded,onClick:() => getImage(ImageSource.gallery)),
                  SizedBox(height: 30),
                  CustomButton(title: 'Take a pic',icon: Icons.camera_alt_rounded,onClick:() => getImage(ImageSource.camera)),
                  SizedBox(height: 30),
                  TextButton(onPressed: () {
                    uploadimage();

                  },
                      child: Text('Scan',
                        style:TextStyle(
                            fontSize: 35,
                            fontFamily: 'Poppins',
                            color: Colors.black
                        ),
                      ),
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(Color(0xff4c505b)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                                side: BorderSide(color: Colors.black)
                            )
                        ),)
                  )

                ,
                SizedBox(height: 30),
                  Container(
                    padding: EdgeInsets.only(left: 33.333),
                    child: Text(message,style: TextStyle(fontFamily: 'Poppins',fontSize: 20,fontWeight: FontWeight.bold)
                    )),
                ]
                )
            )
        );
  }
}

Widget CustomButton({
  required String title,
  required IconData icon,
  required VoidCallback onClick,
}){

  return Container(
      width: 280,
      child:TextButton(
          onPressed: onClick,
          child: Row(
            children: [
              Icon(icon),
              SizedBox(width: 50),
              Text(title, style: TextStyle(fontFamily: 'Poppins'))
            ],
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
  );
}