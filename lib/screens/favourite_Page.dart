import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:recycling_app/screens/payment.dart';
import 'package:recycling_app/shared/colour_constant.dart';
import 'package:recycling_app/shared/txt.dart';

import '../shared/favourite_item.dart';

class favouritePage extends StatefulWidget{


  List<favouriteItem>favouriteItems=[];
  favouritePage({required this.favouriteItems});
  @override
  State<favouritePage> createState() => _favouritePageState();
}

class _favouritePageState extends State<favouritePage> {
List<favouriteItem>favoriteItems=[
 favouriteItem (name: 'Razan wood', description: '18.000 LE',image: 'assets/assetGP/razanwood.jpg'),
  favouriteItem(name: 'iron', description: '25.000 LE',image: 'assets/assetGP/iron.jfif'),
  favouriteItem(name: 'Plastic', description: '18.000 LE',image:'assets/assetGP/plastec.jfif' ),
];
/*void _makePhoneCall(String phoneNumber) async {
  String url = 'tel:$phoneNumber';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: txt('Favorite Page',Colors.white,25),
        backgroundColor: green_color,
      ),
      body: ListView.builder(
        itemCount: favoriteItems.length,
        itemBuilder: (context, index){
          return Container(
height: 300,
            color: Colors.grey.shade300,
            child: Column(
              children: [
                Card(

                  color: Colors.grey.shade200,
                  margin: EdgeInsets.only(
                    top: 5,
                  ),
                  child: ListTile(

                    leading: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: AssetImage(favoriteItems[index].image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),





                    title: Column(
                      children: [
                        Row(

                          children: [

                            txt(favoriteItems[index].name, green_color, 15),


                          ],
                        ),


                      ],
                    ),
                    subtitle: txt(favoriteItems[index].description ,green_color, 15),






                    trailing: IconButton(
                      icon: Icon(Icons.delete,color: green_color,size: 30,),
                      onPressed: () {
                        setState(() {
                          favoriteItems.removeAt(index);
                        });
                      },
                    ),
                  ),
                ),
                Row(
mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    MaterialButton(
                      color:Colors.white,
                      // white_color,

                      onPressed: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (x){
                              return payment();
                            })
                        );
                      },
                      child:txt('Make Bid', green_color ,20) ,),
                    SizedBox(width: 20,),
                    MaterialButton(
                      color:Colors.white,
                      // white_color,

                      onPressed: (){
                    
showDialog(context: context, builder: (context){
  return AlertDialog(
    actions: [
      MaterialButton(onPressed: (){
            _makePhoneCall('01550386172');


             },
        child: txt('Call ', green_color, 20),
      ),
      MaterialButton(onPressed: (){
        Navigator.of(context).pop();
      },
        child: txt('cancle ', green_color, 20),

      ),
    ],

    backgroundColor: Colors.grey.shade50,
    titlePadding: EdgeInsets.all(10),
    contentPadding: EdgeInsets.all(10),
    title: txt('to buy product', Colors.grey, 20),
    content: txt('plz call (+2001550386172)', green_color, 20),
  );
});
                          
                        
                      },
                      child:txt('Buy Now', green_color ,20) ,),


                  ],
                ),

              ],),
          );
        },
      ),
    );
  }
}

*/






  void _makePhoneCall(String phoneNumber) async {
    String url = 'tel:$phoneNumber';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: txt('Favorite Page', Colors.white, 20),
        backgroundColor: green_color,
      ),
      body: ListView.builder(
        itemCount: favoriteItems.length,
        itemBuilder: (context, index) {
          return SingleChildScrollView(
            child: Column(

              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Colors.grey.shade200,
                  width: double.infinity,
                  height: 200,
                  child: Container(
                
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                     borderRadius: BorderRadius.horizontal(
                       left: Radius.circular(5),
                       right: Radius.circular(5)
                    ),),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(favoriteItems[index].image,height: 100,width: 150,),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Column(
                                  children: [
                                    txt(favoriteItems[index].name, green_color, 15),
                                    txt(favoriteItems[index].description, green_color, 15),
                                  ],),
                              ),
                              IconButton(
                                icon: Icon(Icons.delete, color: green_color, size: 30),
                                onPressed: () {
                                  setState(() {
                                    favoriteItems.removeAt(index);
                                  });
                                },
                              ),
                
                
                            ],
                          ),
                
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              MaterialButton(
                                color: Colors.white,
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(builder: (x) {
                                      return payment();
                                    }),
                                  );
                                },
                                child: txt('Make Bid', green_color, 15),
                              ),
                
                              MaterialButton(
                                color: Colors.white,
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        actions: [
                                          MaterialButton(
                                            onPressed: () {
                                              _makePhoneCall('01550386172');
                                            },
                                            child: txt('Call', green_color, 15),
                                          ),
                                          MaterialButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: txt('Cancel', green_color, 15),
                                          ),
                                        ],
                                        backgroundColor: Colors.grey.shade50,
                                        titlePadding: EdgeInsets.all(10),
                                        contentPadding: EdgeInsets.all(10),
                                        title: txt('To Buy Product', Colors.grey, 15),
                                        content: txt('Please call (+2001550386172)', green_color, 15),
                                      );
                                    },
                                  );
                                },
                                child: txt('Buy Now', green_color, 15),
                
                              ),
                            ],
                          ),
                        ],
                
                
                      ),
                    ),
                
                
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}