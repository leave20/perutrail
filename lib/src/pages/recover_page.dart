import 'package:flutter/material.dart';

class RecoverPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/Register.png"),
                fit: BoxFit.cover,
                alignment: Alignment.center),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Create your account',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text('Enter the email where we will send the new password.'),
                  SizedBox(
                    height: 35.0,
                  ),
                   _createEmailRecover(),
                  SizedBox(
                    height: 15.0,
                  ),
                   _createButtonRecover(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _createEmailRecover() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 23.0),
      child: TextField(
        cursorColor: Colors.deepPurple,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            labelStyle:
            TextStyle(fontSize: 18, color: Colors.blueGrey.shade900),
            hintText: 'example@gmail.com',
            labelText: 'E-mail ',
            fillColor: Colors.grey.shade100,
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(5.0),
              ),
              borderSide: BorderSide(color: Colors.grey.shade100, width: 2),
            ),
            border: InputBorder.none
          // counterText: snapshot.data,
        ),
      ),
    );
  }

  Widget _createButtonRecover() {
    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      onPrimary: Colors.blueGrey.shade900,
      primary: Colors.amber,
      minimumSize: Size(88, 36),
      padding: EdgeInsets.symmetric(horizontal: 65.0),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
      elevation: 0.0,
    );
    return ElevatedButton(
      style: raisedButtonStyle,
      onPressed: () {},
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 20.0),
        child: Text(
          'Sign in',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
