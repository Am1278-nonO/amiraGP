import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recycling_app/screens/commmon_Question.dart';
import 'package:recycling_app/screens/contact_us.dart';
import 'package:recycling_app/screens/favourite_Page.dart';
import 'package:recycling_app/screens/payment.dart';
import 'package:recycling_app/screens/personal_account_details_screen.dart';
import 'package:recycling_app/screens/terms_condition.dart';
import 'package:recycling_app/shared/colour_constant.dart';
import 'package:recycling_app/shared/divider.dart';
import 'package:recycling_app/shared/icon_home.dart';
import 'package:recycling_app/shared/item_info.dart';
import 'package:recycling_app/shared/txt.dart';





class more extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff196D49),
      appBar:AppBar(
        elevation: 0,
        backgroundColor: Color(0xff196D49),
        title: Stack(
          children: [
            Container(
              height: 100,
              width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(

                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 30,bottom: 30),
                      alignment: Alignment.bottomRight,
                      child: IconButton(onPressed: (){},
                        icon: Icon(Icons.notification_important,size:35,),color: Colors.white,),

                    ),
                    SizedBox(width: 50,),
                    Container(
                      padding: EdgeInsets.only(top: 30,bottom: 30),
                      alignment: Alignment.bottomRight,
                      child:txt('more', Colors.white, 25),

                    ),

                    Container(
                      padding: EdgeInsets.only(top: 30,bottom: 30),
                      alignment: Alignment.bottomRight,
                      child: IconButton(onPressed: (){},
                        icon: Icon(Icons.menu,size: 35,),color: Colors.white,),
                    ),
                  ],
                ),
              ),
            ),




          ],
        ),



      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  txt('user name', Colors.white, 25),
                  SizedBox(width: 30),
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade300,
                    radius: 40,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              height: 650,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 3,),
                  item_info(
                          IconButton(

onPressed: (){},

                            icon:  Icon(Icons.person,size: 30,color:Color(0xff196D49) ),
                          ),
                    'personal account', personal_account_details_screen(name: 'Abdelrahman Mahmoud', image:Image.asset('assets/assetGP/handsome-man-with-his-arms-crossed.jpg'), email: 'am63@gmail.com',
                address: 'Beni Seuf', condition: 'seller', credit_card: '1235',
                      phone: 0101222222233),context,
                  ),


                  SizedBox(height: 3,),
                  divider(1, 4,Color(0xff196D49),30),
                  SizedBox(height: 10,),
                  item_info(
                    IconButton(onPressed: (){

                    },
                    icon:  Icon(Icons.payment,size: 30,color:Color(0xff196D49)),
                  ), 'Payment',payment(),context,),
                  SizedBox(height: 3,),
                  divider(1, 2,Color(0xff196D49),30),
                  SizedBox(height:3,),
                  item_info(
                    IconButton(onPressed: (){},
                     icon: Icon(Icons.favorite,size: 30,color:Color(0xff196D49) ),
                  ),
                    'favourite',favouritePage(favouriteItems: [],) ,context,),
                  SizedBox(height: 3,),
                  divider(1, 2,Color(0xff196D49),30),
                  SizedBox(height: 3,),
                  item_info(
                    IconButton(onPressed: (){},
                     icon:  Container(
                       width: 30,
                       height: 30,


decoration: BoxDecoration(
  shape: BoxShape.circle,
  color:Color(0xff196D49),
),
                         child: Icon(Icons.question_mark,size:25,color:Colors.white ,),
                     ),
                  ),
                    'common questions',commonQuestion(),context,),
                  SizedBox(height: 3,),
                  divider(1, 2,Color(0xff196D49),30),
                  SizedBox(height: 3,),
                  item_info(
                    IconButton(onPressed: (){},
                      icon:Icon(Icons.headset_mic_rounded,size: 30,color:Color(0xff196D49) ),
                  ),
                    'Contact us',contactUs(),context,),
                  SizedBox(height: 10,),
                  divider(1, 2,Color(0xff196D49),30),
                  // SizedBox(height: 20,),
                  item_info(
                    IconButton(onPressed: (){},


                      icon:Icon(Icons.library_books_rounded,size: 30,color:Color(0xff196D49) ),
                  ),
                    'terms and conditions',termsAndCondition(),context,),

                  SizedBox(height: 3,),
                  Row(
                    children: [
                   /*Container(

                        decoration: ShapeDecoration(
                          color: Color(0xff497126),
                          shape: RoundedRectangleBorder(
                            borderRadius:


                            BorderRadius.only(
                              topRight: Radius.circular(25),
                              topLeft: Radius.circular(25),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            side: const BorderSide(
                              color: Color(0xff196D49),
                              width: 7,

                            ),
                          ),
                        ),


                        child:  Icon(Icons.home_filled,
                          size:40,
                          color: Colors.grey.shade200,),),*/













                      iconHome(),



                    ],),



                ],),

            ),
          ],),
      ),
    );
  }

}
