import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:perutrail/src/components/buttons.dart';
import 'package:perutrail/src/components/slanding_clipper.dart';

import 'screen_second.dart';

class OnBoardingScreenOne extends StatefulWidget {
  @override
  _OnBoardingScreenOneState createState() => _OnBoardingScreenOneState();
}

class _OnBoardingScreenOneState extends State<OnBoardingScreenOne> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Color _mainColor = Colors.amber;

    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 50.0,),
                Text(
                  'Welcome to Keni App',
                  style: TextStyle(
                    color: Colors.blueGrey.shade900,
                    fontSize: 25,
                  ),
                ),
                Image(
                  width: size.width * 0.95,
                  height: size.height * 0.20,
                  image: AssetImage('assets/images/patron1.png'),
                  fit: BoxFit.contain,
                ),
                ClipPath(
                  clipper: SlandingClipper(),
                  child: Container(
                    height: size.height * 0.55,
                    color: _mainColor,
                  ),
                )
              ],
            ),
            Positioned(
              top: size.height * 0.55,
              child: Container(
                width: size.width,
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Culture',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.blueGrey.shade900,
                        fontSize: 45,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.025,
                    ),
                    Text(
                      'Explore the Moche route with Muchik app and dare to know one of the most important cultures of ancient Peru.                      \nThe Mochica culture, which spread from Ancash to Piura.',
                      textAlign: TextAlign.end,
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 55,
              left: 0,
              right: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0 / 4),
                    width: 15.0,
                    height: 15.0,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.blueGrey.shade900, width: 2.0),
                      shape: BoxShape.circle,
                      color: Colors.blueGrey.shade900,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0 / 4),
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.amber, width: 2),
                        shape: BoxShape.circle,
                        color: Colors.white),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0 / 4),
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.amber, width: 2),
                        shape: BoxShape.circle,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0 * 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Button(),
                  Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child: FloatingActionButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            child: OnboardingScreenTwo(),
                            type: PageTransitionType.fade,
                          ),
                        );
                      },
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.navigate_next_rounded,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
