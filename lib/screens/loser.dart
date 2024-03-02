
import 'package:flutter/material.dart';
import 'package:recycling_app/shared/appBar.dart';
import 'package:recycling_app/shared/appbaram.dart';
import 'package:recycling_app/shared/colour_constant.dart';
import 'package:recycling_app/shared/icon_home.dart';

import 'package:recycling_app/shared/txt.dart';


class Loser extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(


    appBar:PreferredSize(
    preferredSize: Size(double.infinity, 110),
    child: appBaram('Auction ', 'fininsh',

    Colors.red,),
    ),

      body: Container(

        //padding: EdgeInsets.all(1),

        color: green_color,

        width: double.infinity,
        height: double.infinity,



        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          height: 650,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  height: 200,
                  width: 300,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/assetGP/IMG-20231024-WA0020loser.jpg'),
                        fit: BoxFit.cover),
                  ),
                  //color: Color(0xffCACACA),

                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(

                child:  Column(
                    children: [
                       Padding(
                         padding: const EdgeInsets.all(2.0),
                         child:txt('sorry, someone else won the Auction ', Color(0xff497126), 15),

                       ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: txt('Better luck next time ', Colors.red, 15),
                      ),
                    ],
                  )


                ),
              ),
              SizedBox(
                height: 70,
              ),
              Container(

                child:Row

                  (
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    iconHome(),
                  ],
                ),

              ),

            ],),
        ),
      ),
    );
  }}
