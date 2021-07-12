import 'package:flutter/material.dart';
import 'package:perutrail/src/components/buttons.dart';
import 'package:perutrail/src/components/slanding_clipper.dart';
import 'dart:math' as math;

import 'package:perutrail/src/pages/login_page.dart';

class OnboardingScreenThree extends StatelessWidget {
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
                Image(
                  width: size.width,
                  height: size.height * 0.6,
                  fit: BoxFit.contain,
                  image: AssetImage('assets/images/patron3.png'),
                ),
                Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationY(math.pi),
                  child: ClipPath(
                    clipper: SlandingClipper(),
                    child: Container(
                      height: size.height * 0.4,
                      color: Colors.amber,
                    ),
                  ),
                )
              ],
            ),
            Positioned(
              top: size.height * 0.65,
              child: Container(
                width: size.width,
                padding: EdgeInsets.all(20.2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'DELIVERY',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey.shade900,
                        fontSize: 30,
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
                          MaterialPageRoute(
                            builder: (_) => LoginPage(),
                          ),
                        );
                      },
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.done_rounded,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
