import 'dart:async';
import 'package:flutter/material.dart';
import 'User/login.dart';

class SplashScreen extends StatefulWidget{
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{

  @override
  initState(){
    Timer(Duration(seconds: 3), () =>
    {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => new LoginPage(), maintainState: false),
      ),
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.white,
      child: Center(
        child: Image(
          height: MediaQuery.of(context).size.width*0.55,
          fit: BoxFit.fill,
          image: AssetImage("assets/images/parking.png"),
        ),
      ),
    );
  }
}