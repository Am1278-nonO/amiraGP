import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recycling_app/screens/home.dart';
import 'package:recycling_app/shared/colour_constant.dart';
import 'package:recycling_app/shared/txt.dart';

class returnDataContactUs extends StatelessWidget{
  var name;
  var email;
  var message;
  @override
  returnDataContactUs({required this.name,required this.email,required this.message});
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body:  Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          
                  txt('your name is :${name}', Colors.green, 25),
                  txt('your email is ${email}', Colors.green, 25),
                  txt('your mssage is ${message}', Colors.green, 25),
          SizedBox(height: 30,),
              MaterialButton(
                  color: green_color,
                  height: 30,
                  child: txt('return home', Colors.white, 20),
                  onPressed: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(builder:(x){
                        return Homee();
                      })
                    );
                  }
              ),
            ],
          ),
        ),
      ),
    );
  }

}