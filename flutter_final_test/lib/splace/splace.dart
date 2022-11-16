
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_final_test/blabbon/blabbon.dart';

class MySplacescreen extends StatefulWidget {
  const MySplacescreen({Key? key}) : super(key: key);

  @override
  State<MySplacescreen> createState() => _MySplacescreenState();
}

class _MySplacescreenState extends State<MySplacescreen> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 10),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Blabbon())));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
       width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(
        "assets/images/splash_bg.png"
        ),
           fit: BoxFit.cover,
           colorFilter: ColorFilter.mode(Colors.transparent, BlendMode.darken)
           )
      ),
      child: Scaffold(
         backgroundColor: Colors.transparent,
         body: Container(
          child: SafeArea(
            child: SingleChildScrollView(
              child:Column(
                children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 250),
                  child: Container(
                            
                                width: 350,
                                  height: 100,
                                  
                                  decoration: BoxDecoration(
                                    
                                    shape: BoxShape.rectangle,
                                    image: DecorationImage(
                                    image: AssetImage("assets/images/logo.png",) ,
                                    fit: BoxFit.fill
                                                        ),
                                                          
                                          ),
                                          

                            ),
                )
                ],

              ) )
          ),
         ),

      ),

    );
    
  }
}