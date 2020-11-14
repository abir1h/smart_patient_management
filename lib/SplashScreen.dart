import 'dart:async';
import 'package:smart_patient_management/get_start.dart';

import '';

import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }


  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 5);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => get_start()
    )
    );
  }

  initScreen(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset("images/logo.jpg"),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),Text('Smart Patient Management Sytstem',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            CircularProgressIndicator(
              backgroundColor: Colors.green,
              strokeWidth: 3,
            )
          ],
        ),
      ),
    );
  }
}
