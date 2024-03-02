import 'package:flutter/material.dart';
import 'package:recycling_app/shared/colour_constant.dart';
import 'package:recycling_app/shared/txt.dart';
bool isTapped=false;
Widget latestrectangle(
    String image, String t1, String t2, String t3, String t4,dynamic f, Icon icon) {
  return Padding(

    padding: const EdgeInsets.only(top: 10, right: 4, left: 4, bottom: 20),
    child: SingleChildScrollView(

            child: SingleChildScrollView(
              child: Column(
                    
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: f,
                        icon: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.grey.shade300,
                              width: 2.0,
                              //style: BorderStyle.solid,
                            ),
                          ),
                          padding: EdgeInsets.all(8),
                          child: icon,
                        ),
                      )
                    
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 150,
                    width: 150,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        //color: Color(0xff497126),
                      ),
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('${image}'),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          //txt('${t1}', Color(0xff497126), 20),
                         Text(
                            '${t1}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Color(0xff497126),
                            ),
                          ),
                          Text(
                            '${t2}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              color: Colors.grey.shade800,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                        height: 10,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        '${t3}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '${t4}',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 10,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

  );
}
