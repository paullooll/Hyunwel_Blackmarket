import 'package:app_dev/components/button.dart';
import 'package:app_dev/components/textfield.dart';
import 'package:app_dev/services/auth/auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  final void Function()? onTap;

  const Login ({super.key, required this.onTap});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final  emailController = TextEditingController();
  final  passController = TextEditingController();

  void login() async {
    final _authService = AuthService();

    try{
      await _authService.signInWithEmailAndPass(
        emailController.text, 
        passController.text,
      );
    }

    catch (e){
      // ignore: use_build_context_synchronously
      showDialog(
        context: context, 
        builder: (context) => AlertDialog(
          title: Text(e.toString()),
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
              "Marketplace ni Hyunwel",
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
            const SizedBox(height: 10),
            MyButton(
              text: "Sign In", 
              onTap: login,
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member?",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Register Now",
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