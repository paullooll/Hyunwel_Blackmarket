import 'package:app_dev/screens/home.dart';
import 'package:app_dev/services/auth/login_register.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthCheck extends StatelessWidget{
  const AuthCheck({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData){
            return const HomePage();
          }
          else{
            return const LoginOrRegister();
          }
        },
      ),
    );
  }
}