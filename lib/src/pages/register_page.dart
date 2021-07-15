import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:perutrail/src/pages/login_page.dart';

class RegisterPage extends StatelessWidget {
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
                  Text('You are an step closer to map your routes!'),
                  SizedBox(
                    height: 35.0,
                  ),
                  _createEmail(),
                  SizedBox(height: 25.0),
                  _createInputName(),
                  SizedBox(height: 25.0),
                  _createPassword(),
                  SizedBox(height: 25.0),
                  _createConfirmPassword(),
                  SizedBox(height: 30.0),
                  _createButtonRegister(),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: 35,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Already have an account?'),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: LoginPage(),
                                      type: PageTransitionType.fade));
                            },
                            child: Text('Sign In'))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _createEmail() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 23.0),
      child: TextField(
        cursorColor: Colors.blueGrey.shade900,
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
            border: InputBorder.none),
      ),
    );
  }

  Widget _createInputName() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 23.0),
      child: TextField(
        cursorColor: Colors.blueGrey.shade900,
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
            labelStyle:
                TextStyle(fontSize: 18, color: Colors.blueGrey.shade900),
            hintText: 'Your Name',
            labelText: 'Name ',
            fillColor: Colors.grey.shade100,
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(5.0),
              ),
              borderSide: BorderSide(color: Colors.grey.shade100, width: 2),
            ),
            border: InputBorder.none),
      ),
    );
  }

  Widget _createPassword() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 23.0),
      child: TextField(
        cursorColor: Colors.deepPurple,
        obscureText: true,
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
            hintText: '',
            labelStyle:
                TextStyle(fontSize: 18, color: Colors.blueGrey.shade900),
            labelText: 'Password ',
            suffixIcon: Icon(
              Icons.visibility_off,
            ),
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

  Widget _createConfirmPassword() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 23.0),
      child: TextField(
        cursorColor: Colors.deepPurple,
        obscureText: true,
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
            hintText: '',
            labelStyle:
                TextStyle(fontSize: 18, color: Colors.blueGrey.shade900),
            labelText: 'Confirm Password ',
            suffixIcon: Icon(
              Icons.visibility_off,
            ),
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

  _createButtonRegister() {
    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      onPrimary: Colors.blueGrey.shade900,
      primary: Colors.amber,
      minimumSize: Size(88, 36),
      padding: EdgeInsets.symmetric(horizontal: 65.0),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      elevation: 0.0,
    );
    return ElevatedButton(
      style: raisedButtonStyle,
      onPressed: () {},
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 20.0),
        child: Text(
          'Sign Up',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
