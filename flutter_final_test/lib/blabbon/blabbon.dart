import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_final_test/Signin/signin.dart';
import 'package:flutter_final_test/Signup/signup.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_final_test/bloc/event.dart';
import 'package:flutter_final_test/bloc/state.dart';
import 'package:flutter_final_test/deshboard/deshboard.dart';
import 'package:flutter_final_test/repo/repo.dart';

import '../bloc/bloc.dart';

class Blabbon extends StatefulWidget {
  const Blabbon({Key? key}) : super(key: key);

  @override
  State<Blabbon> createState() => _BlabbonState();
}

class _BlabbonState extends State<Blabbon> {
  bool _isLoggedIn = false;
    Map _userObj = {};
     final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
   void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return 
      Container(
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
        body: Container(
        //   key: _formKey,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
             //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  child: Container(

                            
                                width: 300,
                                  height: 100,
                                  
                                  
                                  decoration: BoxDecoration(
                                    
                                    shape: BoxShape.rectangle,
                                    image: DecorationImage(
                                    image: AssetImage("assets/images/logo.png",) ,
                                    fit: BoxFit.fill
                                                        ),                                                         
                                          ),                                         
                            ),
                ),
                SizedBox(height: 5,),
                
                   Container(
                   // alignment: Alignment.center,
                    child: Text('Online Quiz Game For Children',textAlign: TextAlign.center, style: TextStyle(
                    fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white, )),
                  ),
                  SizedBox(height: 230,),
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
                    _isLoggedIn?Column(
                      children: [
                        CachedNetworkImage(
              height: 200,
              width: 200,
              fit: BoxFit.cover,
              imageUrl:_userObj["picture"]["data"]["url"],
              errorWidget: (context, url, error) => Icon(Icons.error_outline),
            ),
           // Image.network(_userObj["picture"]["data"]["url"]),
            Text(_userObj["name"]),
            Text(_userObj["email"]),
            TextButton(
                onPressed: () {
                  FacebookAuth.instance.logOut().then((value) {
                    setState(() {
                      _isLoggedIn = false;
                      _userObj = {};
                    });
                  });
                },
                child: Text("Logout")),
                      
                      ],
                    ):
                              Center(
                                child: GestureDetector(
                                  onTap:()async{
                                     FacebookAuth.instance.login(
                              
                                                permissions: ["public_profile", "email"]).then((value) {
                                               FacebookAuth.instance.getUserData().then((userData) async {
                              
                                                setState(() {
                                                  _isLoggedIn = true;
                                                  _userObj = userData;
                                                });
                                              });
                                            });
                                  },
                                  child: Container(
                                    height: 50,
                                                            alignment: Alignment.center,
                                   child: Text('Connect With Facebook',style: TextStyle(color: Colors.white,fontSize: 14 ),),
                                
                                  ),
                                ),
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
                    GestureDetector(
                      onTap: (){
                        Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BlocProvider(
                                  create: (context) =>  AuthBloc( authRepository: AuthRepository()),
                                  child: SignUp(),
                                )),
                      );
                      },
                      child: Container(
                                   
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
                    ),
                              Container(
                                height: 50,
                             alignment: Alignment.center,
                               child: Text('Connect With Google',style: TextStyle(color: Colors.white,fontSize: 14 ),),

                              ),
                              
                              
                  ]
                 ),
              ),
              SizedBox(height: 20,),
               Container(
                padding: EdgeInsets.symmetric(horizontal: 20,),
                // margin: EdgeInsets.only(top: 20),
       
                    height: 50, width: 320,

               child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>SignUp()));
                  
                },
                 // onPressed: _submit,
                  child: new Text('Sign Up', style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
                   style: ElevatedButton.styleFrom(
           // shape: StadiumBorder(),
            primary: Color(0xff6b3ca1),
          ),
                ),
             ),
             SizedBox(height: 10,),
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
            )
          )
        )
       )
    );
    
  }

 void _authenticateWithEmailAndPassword(context) {
    if (_formKey.currentState!.validate()) {
   
      BlocProvider.of<AuthBloc>(context).add(
        SignInRequested(_emailController.text, _passwordController.text),
      );
    }
  }

  void _authenticateWithGoogle(context) {
    BlocProvider.of<AuthBloc>(context).add(
      GoogleSignInRequested(),
    );
  }
}

/*Widget build(BuildContext context) {
  return Scaffold(
    body: BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is Authenticated) {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Deshboard()));
        }
        if (state is AuthError) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.error)));
        }
      },
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          if (state is Loading) {
            
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is UnAuthenticated) {
            return Center(
              child: Text("ok"),
            );
          }
          return Container();
        },
      ),
    ),
  );
}*/

Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text("SignUp"),
    ),
    body: BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is Authenticated) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => Deshboard(),
            ),
          );
        }
        if (state is AuthError) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.error)));
        }
      },
      builder: (context, state) {
        if (state is Loading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is UnAuthenticated) {
          return Center(child: Text("okk"));
        }
        return Container();
      },
    ),
  );
}


