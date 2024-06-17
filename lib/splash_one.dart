import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:newone1/search.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MyApp()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/plant.jpg"),
            SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(), 
                padding: EdgeInsets.all(20), 
                foregroundColor: Colors.white, 
                backgroundColor: Colors.green, 
              ),
              onPressed: () {
                Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MyApp()),
      );
                // logic
              },
              child: Icon(Icons.arrow_forward),
            ),
            SizedBox(height: 40), 

            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Enjoy Your Life With ",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black, // Set text color to white
                      // fontStyle: FontStyle.italic, // Set text style to italic
                    ),
                  ),
                  TextSpan(
                    text: "Plant",
                    style: TextStyle(
                      
                      color: Colors.green, // Set text color to blue
                      fontWeight: FontWeight.bold, // Set text weight to bold
                      // fontStyle: FontStyle.italic, // Set text style to italic
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
