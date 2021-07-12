import 'package:flutter/material.dart';

class Button extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      primary: Colors.transparent,
      minimumSize: Size(88, 36),
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2.0)),
      ),
    );

    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        child: Text(
          'Skip',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0
          ),
        ),
        style: flatButtonStyle,
        onPressed: () => print('Skip'),
      ),
    );
  }
}
