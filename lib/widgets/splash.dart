import 'package:fashion_app/widgets/loading.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/main/home');
    });
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Loading(),
      ),
    );
  }
}