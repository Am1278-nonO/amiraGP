// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:recycling_app/screens/auction_page.dart';
import 'package:recycling_app/screens/commmon_Question.dart';
import 'package:recycling_app/screens/congratulation.dart';
import 'package:recycling_app/screens/contact_us.dart';

import 'package:recycling_app/screens/login.dart';


import 'package:recycling_app/screens/loser.dart';

import 'package:recycling_app/screens/follow_Auctions.dart';
import 'package:recycling_app/screens/home.dart';
import 'package:recycling_app/screens/intro.dart';
import 'package:recycling_app/screens/more.dart';
import 'package:recycling_app/screens/navigation_page.dart';
import 'package:recycling_app/screens/terms_condition.dart';


void main() {
  runApp(Recycling_app());
}

class Recycling_app extends StatelessWidget {
  const Recycling_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
home:more(),
    );
  }
}
