import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:perutrail/src/components/buttons.dart';
import 'package:perutrail/src/components/slanding_clipper.dart';

import 'screen_third.dart';

class OnboardingScreenTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RotatedBox(
                  quarterTurns: 2,
                  child: ClipPath(
                    clipper: SlandingClipper(),
                    child: Container(
                      height: size.height * 0.4,
                      color: Colors.amber,
                    ),
                  ),
                ),
                Image(
                  width: size.width,
                  height: size.height * 0.6,
                  fit: BoxFit.contain,
                  image: AssetImage('assets/images/patron2.png'),
                ),
              ],
            ),
            Positioned(
              top: size.height * 0.05,
              child: Container(
                width: size.width,
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'TITLE',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.blueGrey.shade900,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Text(
                      'Lorem Ipsum is simply dummy \ntext of the printing and typesetting industry.',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blueGrey.shade900,
                      ),
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
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.amber, width: 2),
                        shape: BoxShape.circle,
                        color: Colors.white24),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0 / 4),
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.blueGrey.shade900, width: 2),
                        shape: BoxShape.circle,
                        color: Colors.blueGrey.shade900),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0 / 4),
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.amber, width: 2),
                        shape: BoxShape.circle,
                        color: Colors.white24),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.2 * 2),
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
                            child: OnboardingScreenThree(),
                            type: PageTransitionType.fade,
                          ),
                        );
                      },
                      backgroundColor: Colors.amber,
                      child: Icon(
                        Icons.navigate_next_rounded,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
