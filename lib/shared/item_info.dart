





import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recycling_app/shared/txt.dart';

Widget item_info(IconButton icon, String x1, Widget screen, BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) {
          return screen;
        }),
      );
    },
    child: Row(
      children: [
        icon,
        SizedBox(width: 10,),
        txt('${x1}', Color(0xff196D49), 15),
      ],
    ),
  );
}