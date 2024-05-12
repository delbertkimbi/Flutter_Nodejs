import 'package:amazone_clone/constants/global_variables.dart';
import 'package:amazone_clone/features/auth/screens/auth_screens.dart';
import 'package:amazone_clone/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amazone Clone',
      theme: ThemeData(
        scaffoldBackgroundColor: GlobalVariables.backgroundColor,
        colorScheme: const ColorScheme.light(primary: GlobalVariables.secondaryColor),
        appBarTheme:const  AppBarTheme(
          elevation: 0.0,
           iconTheme: IconThemeData(
            color: Colors.black,
          ), 
        ),
        useMaterial3: true,
      ),
      onGenerateRoute: (settings)=> generateRoute(settings),
      home:const AuthScreen()
    );
  }
}
