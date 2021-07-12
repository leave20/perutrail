import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final ButtonStyle outlineButtonStyle = OutlinedButton.styleFrom(
      primary: Colors.black87,
      minimumSize: Size(60, 60),
      padding: EdgeInsets.symmetric(horizontal: 10),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2)),
      ),
    ).copyWith(
      side: MaterialStateProperty.resolveWith<BorderSide>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.pressed))
            return BorderSide(
              color: Theme.of(context).colorScheme.primary,
              width: 1,
            );
          return null; // Defer to the widget's default.
        },
      ),
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            // decoration: BoxDecoration(
            //   image: DecorationImage(
            //     image: AssetImage('assets/images/Register.png'),
            //     fit: BoxFit.contain,
            //     alignment: Alignment.center,
            //   ),
            // ),
            child: Column(
              children: [
                Container(
                  width: size.width * 0.85,
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 50.0),
                      Text(
                        'Map your routes!\nWe will accompany you!',
                        style: TextStyle(fontSize: 20.0),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20.0),
                      _createMail(),
                      SizedBox(height: 20.0),
                      _createPassword(),
                      SizedBox(height: 20.0),
                      _createButton()
                    ],
                  ),
                ),
                Text('Or you can login with'),
                SizedBox(height: 20.0),
                Container(
                  width: 250,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      OutlinedButton(
                        style: outlineButtonStyle,
                        onPressed: () {},
                        child: Image(
                          image: AssetImage('assets/images/facebookIcon.png'),
                        ),
                      ),
                      OutlinedButton(
                        style: outlineButtonStyle,
                        onPressed: () {},
                        child: Image(
                          image: AssetImage('assets/images/facebookIcon.png'),
                        ),
                      ),
                      OutlinedButton(
                        style: outlineButtonStyle,
                        onPressed: () {},
                        child: Image(
                          image: AssetImage('assets/images/facebookIcon.png'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _createMail() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.0),
      child: TextField(
        cursorColor: Colors.deepPurple,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: 'example@gmail.com',
            labelText: 'E-mail ',
            fillColor: Colors.grey.shade200,
            filled: true,
            border: InputBorder.none
            // counterText: snapshot.data,
            ),
      ),
    );
  }

  Widget _createPassword() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.0),
      child: TextField(
        cursorColor: Colors.deepPurple,
        obscureText: true,
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
            hintText: '',
            labelText: 'Password ',
            suffixIcon: Icon(
              Icons.visibility_off,
            ),
            fillColor: Colors.grey.shade200,
            filled: true,
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
      padding: EdgeInsets.symmetric(horizontal: 45),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      elevation: 0.0,
    );
    return ElevatedButton(
      style: raisedButtonStyle,
      onPressed: () {},
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
        child: Text('Sign in'),
      ),
    );
  }
}
