import 'dart:async';

import 'package:flutter/material.dart';
import 'package:morse/theme.dart';

import 'home.dart';

void main()async {
 runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: Colors.white,
        errorColor: Colors.red,
        colorScheme: ThemeData().colorScheme.copyWith(
          primary: Mytheme().primary,
        ),
        primaryColor:  Mytheme().primary,
      ),
      home: MyHomePage(),
    );

  }
}

class MyHomePage extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<MyHomePage> {


  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
          () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) =>  Home())),

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Mytheme().primary,
      body: Container(

        decoration:  BoxDecoration(
          color: Mytheme().primary,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text('SAHAYOG MULTISTATE',textAlign:TextAlign.center,style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.w500),),
          ),
        ),
      ),
    );
  }
}