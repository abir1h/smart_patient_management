
import 'package:flutter/material.dart';
import 'package:smart_patient_management/DoctorSignIn.dart';
import 'package:smart_patient_management/PatientSIgnIn.dart';
import 'package:smart_patient_management/constrant.dart';

class whoareyou extends StatefulWidget {
  @override
  _whoareyouState createState() => _whoareyouState();
}

class _whoareyouState extends State<whoareyou> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Are you a doctor?",
            style: TextStyle(
              fontFamily: 'AveriaLibre-Bold',
              fontSize: 18,
              color: text_color,
              fontWeight: FontWeight.bold,
            ),

          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: FittedBox(
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context){
                    return docotr_signIn();
                  }));

                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 26, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: primarycolor,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Get Started",
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
          Text("OR",style: TextStyle(
            fontFamily: 'AveriaLibre-Bold',
            fontSize: 18,
            color: text_color,
            fontWeight: FontWeight.bold,
          ),),
          Padding(padding: EdgeInsets.only(top: 15)),
          Text("A patient?",style: TextStyle(
            fontFamily: 'AveriaLibre-Bold',
            fontSize: 18,
            color: text_color,
            fontWeight: FontWeight.bold,
          ),),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: FittedBox(
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context){
                    return patient_signIn();
                  }));

                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 26, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: primarycolor,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Get Started",
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


            ]),
      ),
    ));
  }
}
