import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_final_test/Signup/signup.dart';
import 'package:flutter_final_test/blabbon/blabbon.dart';
import 'package:flutter_final_test/forget/forget.dart';
import 'package:flutter_final_test/home/home.dart';
import 'package:email_validator/email_validator.dart';
class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
    bool _isObscure = false;
   final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool em = false, pa = false;
  var em1 = "yuvi@gmail.com";
  var pass1 = "1346";
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
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
           colorFilter: ColorFilter.mode(Colors.transparent, BlendMode.darken)
           )
      ),
      child: Scaffold(
       // key: _scaffoldKey,
          backgroundColor: Colors.transparent,
        body: Form(
            key: _formKey,
          child: Container(
          //   key: _formKey,
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
               //   mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                      SizedBox(height: 20,),
                     Container(
                      padding: EdgeInsets.symmetric(horizontal: 20,),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Sign In  ",
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.white),
                      ),
                      
                    ),
                    SizedBox(height: 10,),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20,),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Login to your account  ",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white),
                      ),
                      
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                controller: _emailController,
                                 decoration: InputDecoration(
                              labelText: 'Email',  fillColor: Colors.white,
                  
                      ),
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (value) {
                                  return value != null &&
                                          !EmailValidator.validate(value)
                                      ? 'Enter a valid email'
                                      : null;
                                },
                              ),
                    ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: TextFormField(
                                keyboardType: TextInputType.text,
                                controller: _passwordController,
                                decoration: InputDecoration(
                                    suffixIcon: IconButton(
                      icon: Icon(
                          _isObscure ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      }),
                          labelText: 'Password',  fillColor: Colors.white,
                   
                         ),
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (value) {
                                  return value != null && value.length < 6
                                      ? "Enter min. 6 characters"
                                      : null;
                                },
                              ),
                            ),
                             SizedBox(
                              height: 20,
                            ),
                            Container(
                               padding: EdgeInsets.symmetric(horizontal: 40,),
                                  height: 50, width: 380,
                                child: ElevatedButton(
                  child: new Text('Sign In', style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
                     style: ElevatedButton.styleFrom(
                      // shape: StadiumBorder(),
                    primary: Color(0xff6b3ca1),
                   )  , 
                   onPressed: () {
                     Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Home()));
                   }
                            ),
                            ),
                            /*SizedBox(
                              width: MediaQuery.of(context).size.width * 0.3,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: const Text('Sign In'),
                              ),
                            ),*/
               /*    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20,),
                     child: TextFormField(
                       controller: email,
                  decoration: InputDecoration(
                    labelText: 'Email',  fillColor: Colors.white,
                    errorText: em ? "" : null
                    ),
               /*   validator: (val) =>
                        !val!.contains('@') ? 'Not a valid email.' : null,
                  onSaved: (val) => _email = val,*/
                ),
                   ),
               Container(
                      padding: EdgeInsets.symmetric(horizontal: 20,),
                     child: TextFormField(
                       obscureText: _isObscure,
                    autofocus: true,
                      controller: pass,
                  decoration: InputDecoration(
                    
                     suffixIcon: IconButton(
                      icon: Icon(
                          _isObscure ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      }),
        
                    labelText: 'Password',
                     errorText: pa ? "" : null ),
                    
             
                ),
                   ),*/
               
              /* Container(
                  padding: EdgeInsets.symmetric(horizontal: 20,),
                  // margin: EdgeInsets.only(top: 20),
               
                      height: 50, width: 320,
        
                 child: ElevatedButton(
                  child: new Text('Sign In', style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
                     style: ElevatedButton.styleFrom(
                      // shape: StadiumBorder(),
                    primary: Color(0xff6b3ca1),
                   )  , 
                   onPressed: () {
              if (email.text.isEmpty ||
                  !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(email.text)) {
                setState(() {
                  em = true;
                });
              } else if (pass.text.isEmpty ||
                  !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$')
                      .hasMatch(pass.text)) {
                setState(() {
                  pa = true;
                });
              } else if (email.text.isNotEmpty || pass.text.isNotEmpty) {
                em = true;
                pa = true;
        
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Home()));
              } else {
                setState(() {
                  em = false;
                  pa = false;
                });
              }
            },
                   
                    
                   
                  ),
               ),*/
               SizedBox(height: 10,),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 40),
                 child: Row(
                  
                   children: [
                     Container(
                  //   width: 300,
                      child:   TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Forget()),
                    );
                  },
                  child: Text(
                    'Forget Password?',
                    style: TextStyle(
                        color: Colors.black,
                        
                        fontSize: 15),
                  ),
                )
                     ),
                   ],
                 ),
               ),
                 SizedBox(height: 50,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Stack(
                        alignment: Alignment.topLeft,
                    children: [
                      Container(
                                   
                             //   alignment: Alignment.topLeft,
                                    width: 300,
                                      height: 50,
                                      
                                      decoration: BoxDecoration(
                                        
                                        shape: BoxShape.rectangle,
                                        image: DecorationImage(
                                        image: AssetImage("assets/images/fb_logo.png",) ,
                                        fit: BoxFit.fill
                                                            ),
                                                              
                                              ),
                                              
                                              
                   
                                ),
                                Container(
                                  height: 50,
                           
                                
                                    
                                 alignment: Alignment.center,
                                 child: Text('Connect With Facebook',style: TextStyle(color: Colors.white,fontSize: 14 ),),
        
                                ),
                              
                    ]
                   ),
                ),
                SizedBox(height: 20,),
             
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Stack(
                        alignment: Alignment.topLeft,
                    children: [
                      Container(
                                   
                             //   alignment: Alignment.topLeft,
                                    width: 300,
                                      height: 50,
                                      
                                      decoration: BoxDecoration(
                                        
                                        shape: BoxShape.rectangle,
                                        image: DecorationImage(
                                        image: AssetImage("assets/images/google.png",) ,
                                        fit: BoxFit.fill
                                                            ),
                                                              
                                              ),
                                              
                                              
                   
                                ),
                                Container(
                                  height: 50,
                           
                                
                                    
                                 alignment: Alignment.center,
                                 child: Text('Connect With Google',style: TextStyle(color: Colors.white,fontSize: 14 ),),
        
                                ),
                                
                                
                    ]
                   ),
                ),
                SizedBox(height: 10,),
                     Row(mainAxisAlignment: MainAxisAlignment.center, 
                     children: [
          Text('If you don t have  an Account ?',
              style: TextStyle(color: Colors.black, fontSize: 15)),
          TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUp()),
                );
              },
              child: Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xff6b3ca1),
                 
                ),
              ))
              ]),
        
        
                  ],
                ),
        
              )
              ),
        
          ),
        ),
      ),
    );
    
  }
}