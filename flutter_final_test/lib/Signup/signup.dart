import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_final_test/Signin/signin.dart';
import 'package:flutter_final_test/home/home.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _isObscure = false;
  bool _isObscure1 = false;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return  Container(
        height: MediaQuery.of(context).size.height,
       width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(
        "assets/images/background2.png"
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
              child: Column(
                children: [
                   SizedBox(height: 20,),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 10),
                     child: Row(
                        
                  
                       children: [

                         GestureDetector(

                  onTap: () {
                          Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>SignIn()));
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
                    SizedBox(height: 20,),
                   Container(
                    padding: EdgeInsets.symmetric(horizontal: 20,),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Sign Up  ",
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.white),
                    ),
                    
                  ),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20,),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Create your account  ",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white),
                    ),
                    
                  ),
                   SizedBox(height: 10,),
                   Container(
                    padding: EdgeInsets.symmetric(horizontal: 20,),
                   child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Name', ),
                  
           
              ),
                 ),
                 Container(
                    padding: EdgeInsets.symmetric(horizontal: 20,),
                   child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email', ),
           
              ),
                 ),
                 SizedBox(height: 20,),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 30),
                   child: Row(
                     children: [
                      
                       Container(
                        padding: EdgeInsets.symmetric(horizontal: 20,),
                         width: 30,
                                  height: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                                    image: DecorationImage(
                                    image: AssetImage("assets/images/india.png",) ,
                                    fit: BoxFit.fill
                                                        ),
                                                          
                        ),               
                       ),
                       SizedBox(width: 20,),
                  /*    Container(
                      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                      child: IntlPhoneField(
                         autofocus: false,
                           
                        decoration: InputDecoration(
                          filled: true,
                         
                          contentPadding: const EdgeInsets.all(10),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50)),
                          disabledBorder: OutlineInputBorder(
                           
                          ),
                          enabledBorder: OutlineInputBorder(
                    
                         
                            borderRadius: BorderRadius.circular(50),
                          ),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Image.asset(
                              'assets/images/ic_call.png',
                              width: 0,
                              height: 0,
                              fit: BoxFit.fill,
                            ),
                          ),
                          // icon: const Icon(Icons.phone),
                          //prefixText: '8787879797',
                        ),
                        // validator: (phonenum) {
                        //       if (phonenum == null) {
                        //         return 'Please enter Contact Number';
                        //       }
                        //       return null;
                        //     },
                        disableLengthCheck: true,
                        initialCountryCode: 'IN',
                        onChanged: (phone)
 {
                          print(phone.completeNumber);
                        },
                       
                      ),
                    ),*/
                 
                       

                     ],
                   ),
                 ),
                // SizedBox(height: 10,),
                    Container(
                    padding: EdgeInsets.symmetric(horizontal: 20,),
                   child: TextFormField(
                     obscureText: _isObscure,
                  autofocus: true,
                decoration: InputDecoration(
                   suffixIcon: IconButton(
                    icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    }),

                  labelText: 'Password', ),
                  
           
              ),
                 ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20,),
                   child: TextFormField(
                     obscureText: _isObscure1,
                  autofocus: true,
                decoration: InputDecoration(
                   suffixIcon: IconButton(
                    icon: Icon(
                        _isObscure1 ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _isObscure1 = !_isObscure1;
                      });
                    }),

                  labelText: 'Confirm Password', ),
                  
           
              ),
                 ),
                 SizedBox(height: 20,),
                 Row(
                   children: [
                  
                     Container(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      child:    Checkbox(
            checkColor: Colors.white,
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
                     ),
                     SizedBox(width: 5,),
                     Row(
                       children: [
                        
                          Text('I agree to the ',  
            style: TextStyle(color: Colors.black, fontSize: 15)),
        TextButton(
            onPressed: () {},
            child: Text(
              'Privacy Policy',
              style: TextStyle(
                fontSize: 15,
                 decoration: TextDecoration.underline,
                color: Color(0xff37b5ff),
               
              ),
            )),
            Text('& ',style: TextStyle(color: Colors.black, fontSize: 15,),),

           /*  TextButton(
                        onPressed: () {},
                         child: Text(
                              'Terms and Conditions',
                           
                              style: TextStyle(
                                fontSize: 15,
                                  decoration: TextDecoration.underline,
                                color: Color(0xff37b5ff),
                                      
                                     ),
                                   ),
                       ),*/
            
                       ],
                     )
                     
                   ],
                 ),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 80),
                   child: Row(
                    children: [
                       TextButton(
                          onPressed: () {},
                           child: Text(
                                'Terms and Conditions',
                             
                                style: TextStyle(
                                  fontSize: 15,
                                    decoration: TextDecoration.underline,
                                  color: Color(0xff37b5ff),
                                        
                                       ),
                                     ),
                         ),
                    ],
                   ),
                 ),
                /* Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 90),
                   child: Row(
                    children: [
                       TextButton(
                        onPressed: () {},
                         child: Text(
                              'Terms and Conditions',
                              style: TextStyle(
                                fontSize: 15,
                                  decoration: TextDecoration.underline,
                                color: Color(0xff37b5ff),
                                      
                                     ),
                                   ),
                       ),
                    ],
                   ),
                 ),*/
                   SizedBox(height: 10,),
             Container(
                padding: EdgeInsets.symmetric(horizontal: 20,),
                // margin: EdgeInsets.only(top: 20),
       
                    height: 50, width: 320,

               child: ElevatedButton(
                onPressed: () {
                   Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>Home()));
                  
                },
              
                  child: new Text('Sign Up', style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
                   style: ElevatedButton.styleFrom(
         
            primary: Color(0xff6b3ca1),
          ),
                ),
             ),
              Row(mainAxisAlignment: MainAxisAlignment.center, 
                   children: [
        Text('Already  have  an Account ?',
            style: TextStyle(color: Colors.black, fontSize: 15)),
        TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignIn()),
              );
            },
            child: Text(
              'Sign In',
              style: TextStyle(
                fontSize: 15,
                color: Color(0xff6b3ca1),
               
              ),
            ))
      ]),
                 

              ]
              )
            ,)
            ),

         ),

      )
      );
    
  }
}