import 'package:app_dev/screens/login.dart';
import 'package:app_dev/screens/register.dart';
import 'package:flutter/material.dart';

class LoginOrRegister extends StatefulWidget{
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister>{
  bool showLogin = true;

  void toggle(){
    setState(() {
      showLogin = !showLogin;
    });
  }

  @override
  Widget build(BuildContext context){
    if (showLogin){
      return Login(onTap: toggle);
    }
    else {
      return Register(onTap: toggle);
    }
  }
}