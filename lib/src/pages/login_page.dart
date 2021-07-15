import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';
import 'package:perutrail/src/pages/home_page.dart';
import 'package:perutrail/src/pages/recover_page.dart';
import 'package:perutrail/src/pages/register_page.dart';

class LoginPage extends StatelessWidget {
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
                children: [
                  Container(
                    height: 150,
                    child: Image.asset(
                      'assets/images/logo1.png',
                      height: 100.0,
                      width: 100.0,
                    ),
                  ),
                  Text(
                    'Map your routes!\nWe will accompany you!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey.shade900),
                  ),
                  SizedBox(
                    height: 35.0,
                  ),
                  _createMail(),
                  SizedBox(
                    height: 15.0,
                  ),
                  _createPassword(),
                  SizedBox(
                    height: 15.0,
                  ),
                  _createButton(),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    'Or you can login with',
                    style:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 16.0),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    width: 250.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        OutlinedButton(
                          child: Image.asset('assets/images/facebookIcon.png'),
                          style: OutlinedButton.styleFrom(
                              primary: Colors.blueGrey,
                              minimumSize: Size(60, 60),
                              padding: EdgeInsets.only(top: 15, bottom: 15)),
                          onPressed: () {},
                        ),
                        OutlinedButton(
                          child: Image.asset('assets/images/googleIcon.png'),
                          style: OutlinedButton.styleFrom(
                              primary: Colors.blueGrey,
                              minimumSize: Size(60, 60),
                              padding: EdgeInsets.only(top: 15, bottom: 15)),
                          onPressed: () {},
                        ),
                        OutlinedButton(
                          child: Image.asset('assets/images/twitterIcon.png'),
                          style: OutlinedButton.styleFrom(
                              primary: Colors.blueGrey,
                              minimumSize: Size(60, 60),
                              padding: EdgeInsets.only(top: 15, bottom: 15)),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Container(
                    height: 35,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Create new account?'),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: RegisterPage(),
                                      type: PageTransitionType.fade));
                            },
                            child: Text('Register'))
                      ],
                    ),
                  ),
                  Container(
                    height: 30,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Forgot your password?'),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: RecoverPage(),
                                      type: PageTransitionType.fade));
                            },
                            child: Text('Recover'))
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

  Widget _createMail() {
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

  Widget _createButton() {
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
      onPressed: () =>Get.to(HomePage()),
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
