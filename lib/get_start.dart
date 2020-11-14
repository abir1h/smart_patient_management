

import 'package:flutter/material.dart';
import 'package:smart_patient_management/DoctorSignIn.dart';
import 'package:smart_patient_management/PatientSIgnIn.dart';
import 'package:smart_patient_management/constrant.dart';
import 'package:smart_patient_management/doctor%20or%20patient.dart';


class get_start extends StatefulWidget {
  @override
  _get_startState createState() => _get_startState();
}

class _get_startState extends State<get_start> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: MediaQuery.of(context).size.height / 5,
                width: MediaQuery.of(context).size.width / 4,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/doctor.png'))),
              ),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
    return docotr_signIn();
                }));
              },
              child: Text(
                'Doctor SignIn',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              color: Colors.greenAccent,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: MediaQuery.of(context).size.height / 5,
                width: MediaQuery.of(context).size.width / 4,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/patient2.png'))),
              ),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return patient_signIn();
                }));
              },

              child: Text(
                'Patient SignIn',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              color: Colors.greenAccent,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Not Registred? Get Started!'),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: FittedBox(
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context){
                      return whoareyou();
                    }));

                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 26, vertical: 18),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: primarycolor,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Let's get Started",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
