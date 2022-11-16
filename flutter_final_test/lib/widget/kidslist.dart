import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home/home.dart';

class MyKidsList extends StatelessWidget {
  MyKidsList({Key? key, required this.pi}) : super(key: key);

  listkids pi;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
         // mainAxisAlignment: MainAxisAlignment.end,

           children: [
      Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: AssetImage(pi.imagesUrl), fit: BoxFit.cover)),

        /*child: Image.asset(
          "${pi.imagesUrl}",
          height: 80,
          width: 80,
          fit: BoxFit.fill,
        ),*/
      ),
      Container(
        height: 30,
        width: 100,
        child: Text(
          "${pi.name}",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
        ),
      )
    ]));
  }
}