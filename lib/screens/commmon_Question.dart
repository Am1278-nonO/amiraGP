import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recycling_app/shared/txt.dart';

import '../shared/colour_constant.dart';

class commonQuestion extends StatefulWidget {
  @override
  _commonQuestionState createState() => _commonQuestionState();
}

class _commonQuestionState extends State<commonQuestion> {
  bool b = false;
  bool b2 = false;
  bool b3 = false;
  bool b4 = false;
  bool b5 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: green_color,
        title: txt('Hello to common question', Colors.white, 15),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: green_color,
        child: Container(
          margin: EdgeInsets.only(top: 60),
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
          height: 650,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  //color: Colors.grey.shade300,
                  child: Center(
                    child: Column(
                      children: [

                        TextButton.icon(
                          onPressed: () {
                            setState(() {
                             b = ! b;
                            });
                          },
                          icon: Icon(Icons.arrow_back_ios,color: green_color),
                          label: txt('who we are ?', green_color, 20),
                        ),
                      ],
                    ),
                  ),
                ),
                if (b)
                  Container(
                    margin: EdgeInsets.only(top: 20,bottom: 20),
                    width: double.infinity,
                    height: 400,
                    color: Colors.grey.shade100,
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(

                          children: [
                            txt('Our app aims to promote recycling and sustainability by providing a platform that connects recyclers with potential buyers or bidders.'

                            'The auction feature allows users to list recyclable items they have for sale or auction. Other users can then place bids on these items, creating a'
                            'competitive bidding environment. The highest bidder at the end of the auction period wins the item and can proceed with the purchase or collection.'

                            'Our app also provides features such as:'

                                'User Profiles: Users can create profiles and manage their listings, bids, and transactions.'

                                'Search and Filtering: Users can search for specific recyclable items or filter listings based on their preferences, such as location or item category.'

                                'Notifications: Users receive notifications about new listings, bids, and auction updates to stay informed.'

                                'Secure Transactions: The app facilitates secure transactions between buyers and sellers, ensuring a safe and trustworthy environment for all parties involved.'

                                'Ratings and Reviews: Users can rate and leave feedback on transactions, promoting transparency and accountability within the community.'
                            ,green_color,15),
                          ],
                        ),
                      ),
                    ),
                  ),


















                Container(
                  width: double.infinity,
                  //color: Colors.grey.shade100,
                  child: Center(
                    child: Column(
                      children: [

                        TextButton.icon(
                          onPressed: () {
                            setState(() {
                              b2 = ! b2;
                            });
                          },
                          icon: Icon(Icons.arrow_back_ios,color: green_color),
                          label: txt('How does the auction feature work in the recycling app?', green_color, 20),
                        ),
                      ],
                    ),
                  ),
                ),
                if (b2)
                  Container(
                    margin: EdgeInsets.only(top: 20,bottom: 20),
                    width: double.infinity,
                    height: 170,
                    color: Colors.grey.shade100,
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(

                          children: [
                            txt('The auction feature allows users to list recyclable items they have for sale or auction. Other users can bid on these items, and the highest bidder at the end of the auction period wins the item.', green_color, 15),
                          ],
                        ),
                      ),
                    ),
                  ),













                Container(
                  width: double.infinity,
                  //color: Colors.grey.shade300,
                  child: Center(
                    child: Column(
                      children: [

                        TextButton.icon(
                          onPressed: () {
                            setState(() {
                              b3 = ! b3;
                            });
                          },
                          icon: Icon(Icons.arrow_back_ios,color: green_color),
                          label: txt('How long does an auction typically last?', green_color, 20),
                        ),
                      ],
                    ),
                  ),
                ),
                if (b3)
                  Container(
                    margin: EdgeInsets.only(top: 20,bottom: 20),
                    width: double.infinity,
                    height: 160,
                    color: Colors.grey.shade100,
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(

                          children: [
                            txt('The length of an auction can vary depending on the sellers preference. It can range from a few hours to several days, allowing enough time for interested bidders to place their bids.', green_color, 15),
                          ],
                        ),
                      ),
                    ),
                  ),




















                Container(
                  width: double.infinity,
                  //color: Colors.grey.shade300,
                  child: Center(
                    child: Column(
                      children: [

                        TextButton.icon(
                          onPressed: () {
                            setState(() {
                              b4 = ! b4;
                            });
                          },
                          icon: Icon(Icons.arrow_back_ios,color: green_color),
                          label: txt('Can I retract or modify my bid during an auction?', green_color, 20),
                        ),
                      ],
                    ),
                  ),
                ),
                if (b4)
                  Container(
                    margin: EdgeInsets.only(top: 20,bottom: 20),
                    width: double.infinity,
                    height: 160,
                    color: Colors.grey.shade100,
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(

                          children: [
                            txt('Once a bid is placed, it is generally not possible to retract or modify it. Bids are considered binding, and users should carefully consider their bid amount before placing it', green_color, 15),
                          ],
                        ),
                      ),
                    ),
                  ),















                Container(
                  width: double.infinity,
                  //color: Colors.grey.shade300,
                  child: Center(
                    child: Column(
                      children: [

                        TextButton.icon(
                          onPressed: () {
                            setState(() {
                              b5 = ! b5;
                            });
                          },
                          icon: Icon(Icons.arrow_back_ios,color: green_color,),
                          label: txt(' What happens if I win an auction?', green_color, 20),
                        ),
                      ],
                    ),
                  ),
                ),
                if (b5)
                  Container(
                    margin: EdgeInsets.only(top: 20,bottom: 20),
                    width: double.infinity,
                    height: 190,
                    color: Colors.grey.shade100,
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(

                          children: [
                            txt('If you are the highest bidder at the end of the auction, you will be notified as the winner. You can then proceed with the purchase or collection of the item, following the apps guidelines and coordinating with the seller', green_color, 15),
                          ],
                        ),
                      ),
                    ),
                  ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}

