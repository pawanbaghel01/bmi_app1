
import 'dart:async';

import 'package:bmi_app1/pages/HomePage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

    @override
  void initState() {
    super.initState();
   Timer(const Duration(seconds: 10), () { 
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
   });
  }
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      backgroundColor: Colors.blue,
      body: Center(child:Image.asset("bmi.png")),
    );
  }
}