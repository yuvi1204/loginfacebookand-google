import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_final_test/Signin/signin.dart';
import 'package:flutter_final_test/bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_final_test/bloc/event.dart';
import 'package:flutter_final_test/bloc/state.dart';

class Deshboard extends StatelessWidget {
  const Deshboard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    
    final user = FirebaseAuth.instance.currentUser!;
    
    return Scaffold(
         body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is UnAuthenticated) {
      
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => SignIn()),
              (route) => false,
            );
          }
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Email: \n ${user.email??""}',
                style: const TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
              ),
              user.photoURL != null
                  ? Image.network("${user.photoURL??""}")
                  : Container(),
              user.displayName != null
                  ? Text("${user.displayName??""}")
                  : Container(),
              const SizedBox(height: 16),
              ElevatedButton(
                child:Text('Sign Out'),
                onPressed: () {
            
                  context.read<AuthBloc>().add(SignOutRequested());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
} 