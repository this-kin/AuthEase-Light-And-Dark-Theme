import 'package:flutter/material.dart';
import 'package:qoute_app/sign_up.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black12,
        body: SignUp(),
      ),
    );
  }
}
