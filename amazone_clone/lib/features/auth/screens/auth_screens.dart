import 'package:amazone_clone/constants/global_variables.dart';
import 'package:flutter/material.dart';

enum Auth {
  singin,
  signup,
}

class AuthScreen extends StatefulWidget {
  static const String routeName = '/auth_screen';
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Auth _auth = Auth.signup;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalVariables.greyBackgroundCOlor,
      body: SafeArea(
          child: Padding(
        padding: const   EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Text(
              "Welcome",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
            ListTile(
              title: const Text('Create Account'),
              leading: Radio(
                value: Auth.signup,
                activeColor: GlobalVariables.secondaryColor,
                groupValue: _auth,
                onChanged: (Auth? val) {
                  setState(() {
                    _auth = val!;
                  });
                },
              ),
            ),
             ListTile(
              title: const Text('Sign-In'),
              leading: Radio(
                value: Auth.singin,
                activeColor: GlobalVariables.secondaryColor,
                groupValue: _auth,
                onChanged: (Auth? val) {
                  setState(() {
                    _auth = val!;
                  });
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}
