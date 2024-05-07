// ignore_for_file: use_build_context_synchronously

import 'package:app_dev/components/button.dart';
import 'package:app_dev/components/textfield.dart';
import 'package:app_dev/services/auth/auth.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget{
  final void Function()? onTap;

  const Register({
    super.key,
    required this.onTap,
    });

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register>{
  final  emailController = TextEditingController();
  final  passController = TextEditingController();
  final  confirmpassController = TextEditingController();

  void register() async {
    final _authService = AuthService();

    if(passController.text == confirmpassController.text){
      try{
        await _authService.signUpWithEmailAndPass(
          emailController.text, 
          passController.text,
        );
      }
      catch (e){
        showDialog(
          context: context, 
          builder: (context) => AlertDialog(
            title: Text(e.toString()),
          ),
        );
      }
    }
    else{
      showDialog(
          context: context, 
          builder: (context) => const AlertDialog(
            title: Text("Password Don't Match"),
          ),
        );
    }


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.lock_open_rounded,
              size: 72,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(height: 25),
            Text(
              "Create an Account",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            const SizedBox(height: 25),
            MyTextField(
              controller: emailController, 
              hintText: "Email", 
              obscureText: false
            ),
            const SizedBox(height: 25),
            MyTextField(
              controller: passController, 
              hintText: "Password", 
              obscureText: true
            ),
            const SizedBox(height: 25),
            MyTextField(
              controller: confirmpassController, 
              hintText: "Confirm Password", 
              obscureText: true
            ),
            const SizedBox(height: 10),
            MyButton(
              text: "Sign Up", 
              onTap: register,
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already Have an Account",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Login Now",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )
          ],
        )
      ),
    );
  }
}