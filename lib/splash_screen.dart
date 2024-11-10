
import 'dart:math';
import 'dart:async';
import 'package:flutter/material.dart';
import 'HomeScreen.dart';


class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/img/logo.png'),
            SizedBox(height: 20),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(Colors.black),
            )
          ],
        ),
      ),
    );
  }
}


