import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample3/entrep.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  Color primaryColor = Colors.cyan;
  Color secondaryColor = Colors.cyanAccent;
  @override
  Widget build(BuildContext context) {
    //double width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        elevation: 0,
      ),

      body: Column(children: <Widget>[
        Container(
          height: 150.0,
          width: 400.0,
          color: Colors.grey[200],
          margin: EdgeInsets.only(left: 45.0, top: 45.0, right: 45.0),
          padding: EdgeInsets.all(40),
          child: SizedBox(
            height: 20, //height of button
            width: double.infinity, //width of button
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (_) => EntrepRegistration()));
                // Respond to button press
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.cyanAccent,
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(12.0),
                  )),
              child: Text(
                'Entrepreneur',
                style: TextStyle(fontSize: 20),
              ),

              //parameters of Button class
            ),
          ),
        ),
        Container(
          height: 150.0,
          width: 400.0,
          color: Colors.grey[200],
          margin: EdgeInsets.only(left: 45.0, right: 45.0),
          padding: EdgeInsets.all(40),
          child: SizedBox(
            height: 20, //height of button
            width: double.infinity, //width of button
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (_) => LogInScreen()));
                // Respond to button press
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.cyanAccent,
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(12.0),
                  )),
              child: Text(
                'Customer',
                style: TextStyle(fontSize: 20),
              ),

              //parameters of Button class
            ),
          ),
        ),
      ]),
      //body: Container(
      //width: width,
      //child: Text(
      //"Register As:",
      //textAlign: TextAlign.center,
      //textScaleFactor: 3.0,
      //),
      //),

      //body: Container(
      //margin: EdgeInsets.symmetric(horizontal: 40),
      //margin: const EdgeInsets.all(45.0),
      //color: Colors.grey[300],
      //width: 300.0,
      //height: 350.0,
      //alignment: Alignment(0.2, 0.6),
    );

    //);
  }
}
