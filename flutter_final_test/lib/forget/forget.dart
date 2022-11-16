
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_final_test/blabbon/blabbon.dart';

class Forget extends StatefulWidget {
  const Forget({Key? key}) : super(key: key);

  @override
  State<Forget> createState() => _ForgetState();
}

class _ForgetState extends State<Forget> {
  @override
  Widget build(BuildContext context) {
    return Container(
       height: MediaQuery.of(context).size.height,
       width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(
        "assets/images/background2.png"
        ),
           fit: BoxFit.cover,
           colorFilter: ColorFilter.mode(Colors.transparent ,BlendMode.darken)
           )
      ),

      child: Scaffold(
           backgroundColor: Colors.transparent,
        body: Container(
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height:20),
                  Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 10),
                     child: Row(
                        
                  
                       children: [

                         GestureDetector(

                  onTap: () {
                          Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>Blabbon()));
                  }, 

                          child: Container(
                             padding: EdgeInsets.symmetric(horizontal: 20,),
                          alignment: Alignment.topLeft,
                              width: 30,
                                height: 30,
                                
                                decoration: BoxDecoration(
                                  
                                  shape: BoxShape.rectangle,
                                  image: DecorationImage(
                                  image: AssetImage("assets/images/back_btn.png",) ,
                                  fit: BoxFit.fill
                                                      ),
                                                        
                                        ),
                                        

                          )
                          ),
                       ],
                     ),
                   ),
                   SizedBox(height: 30,),
                   Padding(
                     padding: const EdgeInsets.only(right: 70),
                     child: Text("Forgot Password",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
                   ),
                   SizedBox(height:20,),
                  

                   
                     Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text("Please enter your registered\nemail address for password reset\ninstruction.",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)
                      ),
                    
                    SizedBox(height: 20,),
                     Container(
                    padding: EdgeInsets.symmetric(horizontal: 20,),
                   child: TextFormField(
                    // controller: email,
                decoration: InputDecoration(
                  labelText: 'Email',  fillColor: Colors.white,
                  //errorText: em ? "" : null
                  ),
             /*   validator: (val) =>
                      !val!.contains('@') ? 'Not a valid email.' : null,
                onSaved: (val) => _email = val,*/
              ),
                 ),
                 SizedBox(height: 20,),
                    Container(
                      padding:EdgeInsets.symmetric(horizontal: 20),
                      child: ElevatedButton(
                child: new Text('Send Link', style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
                   style: ElevatedButton.styleFrom(
                      // shape: StadiumBorder(),
                  primary: Color(0xff6b3ca1),
                 )  , 
                 onPressed: () {}
                      ),
                    )


                ],
              ),
            )
            ),
        ),
        
        ),
    );
    
  }
}