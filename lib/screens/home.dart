// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:recycling_app/screens/more.dart';
import 'package:recycling_app/shared/divider.dart';
import 'package:recycling_app/shared/favourite_item.dart';
import 'package:recycling_app/shared/latestrectangle.dart';

import 'package:recycling_app/shared/txt.dart';

import 'package:recycling_app/shared/colour_constant.dart';
import 'package:recycling_app/shared/elvated_button.dart';
import 'package:recycling_app/shared/search.dart';

class Homee extends StatefulWidget {
  const Homee({super.key});

  @override
  State<Homee> createState() => _HomeeState();
}

class _HomeeState extends State<Homee> {
  List<favouriteItem>favouriteItems=[];
  void addFavouriteItem(favouriteItem item){
favouriteItems.add(item);
  }

  String text = 'amira';

  bool  isTapped=false;
  bool  isTapped2=false;
  bool  isTapped3=false;
  bool  isTapped4=false;
  bool  isTapped5=false;
  bool  isTapped6=false;
  bool abbearing_search = false;
  @override
  void initState() {
    abbearing_search = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: green_color,
      drawerEnableOpenDragGesture: true,
      drawer: Drawer(
        // backgroundColor: green_color,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: txt(
                'Amira Mahmoud',
                Colors.white,
                18,
              ),
              accountEmail: txt(
                'am6391@gmail.com',
                Colors.white,
                18,
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/iron wire.jpeg"),
                backgroundColor: Colors.white,
              ),
              decoration: BoxDecoration(
                
                  image: DecorationImage(fit: BoxFit.cover,
                      image: AssetImage("assets/images/cooper.jpeg",))),
            ),
            ListTile(
                title: Text("Personal account"),
                leading: Icon(
                  Icons.person,
                  size: 30,
                  color: green_color,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => more(),
                    ),
                  );
                }),
            divider(
              0.5,
              1,
              green_color,30
            ),
            ListTile(
                title: Text("payment"),
                leading: Icon(
                  Icons.payment,
                  size: 30,
                  color: green_color,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => more(),
                    ),
                  );
                }),
            divider(
              0.5,
              3,
              green_color,
              30
            ),
            ListTile(
                title: Text("favourite"),
                leading: Icon(
                  Icons.favorite,
                  size: 30,
                  color: green_color,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => more(),
                    ),
                  );
                }),
            divider(
              0.5,
              3,
              green_color,30
            ),
            ListTile(
                title: Text("common questions"),
                leading: Icon(
                  Icons.question_mark,
                  size: 30,
                  color: green_color,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => more(),
                    ),
                  );
                }),
            divider(
              0.5,
              3,
              green_color,30
            ),
            ListTile(
                title: Text("Contact us"),
                leading: Icon(
                  Icons.headset_mic,
                  size: 30,
                  color: green_color,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => more(),
                    ),
                  );
                }),
            divider(
              0.5,
              3,
              green_color,30
            ),
            ListTile(
                title: Text("terms and conditions"),
                leading: Icon(
                  Icons.policy,
                  size: 30,
                  color: green_color,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => more(),
                    ),
                  );
                }),
          ],
        ),
      ),
      appBar: AppBar(
        // leading: IconButton(
        //     onPressed: () {

        //     },
        //     icon: Icon(
        //       Icons.notification_important,
        //       size: 30,
        //       color: Color.fromARGB(237, 255, 255, 255),
        //     )),
        title: Text(
          'hello ${text.toString()}',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  abbearing_search = !abbearing_search;
                });
              },
              icon: Icon(
                !abbearing_search ? Icons.search : Icons.search_off,
                color: Colors.white,
              ))
        ],
        backgroundColor: green_color,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                color: green_color,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Visibility(visible: abbearing_search, child: search_bar()),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          button_style(Data: "All"),
                          button_style(Data: "Timber"),
                          button_style(Data: "iron"),
                          button_style(Data: "Plastic"),
                          button_style(Data: "paper"),
                        ],
                      ),
                    ),
                  ],
                )),
            Expanded(
              child: Container(
                width: double.infinity,
                height: 640,
                margin: EdgeInsets.only(top: abbearing_search ? 0 : 18),
                padding: EdgeInsets.fromLTRB(10, 15, 10, 3),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                child: ListView(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'latest ',
                          style: TextStyle(
                            color: green_color,
                            fontSize: 18,
                          ),
                        ),
                        Icon(
                          Icons.tune_outlined,
                          color: green_color,
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        latestrectangle(
                            'assets/assetGP/razanwood.jpg',
                            'Razan wood',
                            '5 1h : 25m : 47s',
                            'The tender begins with',
                            '18.000 LE',() {
                          setState(() {

      addFavouriteItem(favouriteItem(name:'Razan wood', description:'18.000 LE',image: 'assets/assetGP/razanwood.jpg'),);
                            isTapped = !isTapped;
                          });
                        },Icon(
                          Icons.favorite,
                          color: isTapped ? Colors.red : Colors.grey,
                        ),),
                        latestrectangle(
                            'assets/assetGP/iron.jfif',
                            'iron',
                            '5 1h : 25m : 47s',
                            'The tender begins with',
                            '25.000 LE',() {
                          setState(() {
                            addFavouriteItem(favouriteItem(name:'iron', description:'25.000 LE',image: 'assets/assetGP/razanwood.jpg'));
                            isTapped2 = !isTapped2;
                          });
                        },Icon(
                          Icons.favorite,
                          color: isTapped2 ? Colors.red : Colors.grey,
                        ),),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        latestrectangle(
                            'assets/assetGP/razanwood.jpg',
                            'Razan wood',
                            '5 1h : 25m : 47s',
                            'The tender begins with',
                          'Razan wood',() {
                          setState(() {
                            addFavouriteItem(favouriteItem(name:'Razan wood', description:'Razan wood',image: 'assets/assetGP/razanwood.jpg'),);
                            isTapped3 = !isTapped3;
                          });
                        },Icon(
                          Icons.favorite,
                          color: isTapped3 ? Colors.red : Colors.grey,
                        ),),
                        latestrectangle(
                            'assets/assetGP/iron.jfif',
                            'iron',
                            '5 1h : 25m : 47s',
                            'The tender begins with',
                            '25.000 LE',() {
                          setState(() {
                            addFavouriteItem(favouriteItem(name:'iron', description:'25.000 LE',image: 'assets/assetGP/razanwood.jpg'),);
                            isTapped4 = !isTapped4;

                          });
                        },Icon(
                          Icons.favorite,
                          color: isTapped4 ? Colors.red : Colors.grey,
                        ),),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        latestrectangle(
                            'assets/assetGP/plastec.jfif',
                            'Plastic',
                            '5 1h : 25m : 47s',
                            'The tender begins with',
                            '18.000 LE',() {
                          setState(() {
                            addFavouriteItem(favouriteItem(name:'Plastic',description:'18.000 LE',image: 'assets/assetGP/razanwood.jpg'),);
                            isTapped5 = !isTapped5;
                          });
                        },Icon(
                          Icons.favorite,
                          color: isTapped5 ? Colors.red : Colors.grey,
                        ),),
                        latestrectangle(

                            'assets/assetGP/corashenew.jpg',
                            'Crochet paper',
                            '5 1h : 25m : 47s',
                            'The tender begins with',
                            '18.000 LE',() {
                          setState(() {
                            addFavouriteItem(favouriteItem(name:'Crochet paper', description:'18.000 LE',image: 'assets/assetGP/razanwood.jpg'),);
                            isTapped6 = !isTapped6;
                          });
                        },Icon(
                          Icons.favorite,
                          color: isTapped6 ? Colors.red : Colors.grey,
                        ),),
                      ],
                    ),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
















