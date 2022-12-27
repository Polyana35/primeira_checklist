import 'package:flutter/material.dart';
import 'package:primeira_checklist/screens/login_screen.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minha Primeira Checklist',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
        scaffoldBackgroundColor: Colors.red,
        colorScheme: ThemeData().colorScheme.copyWith(primary: Colors.red),
      ),
      home: const LoginScreen(),
    );
  }
}
