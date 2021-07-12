import 'package:flutter/material.dart';
import 'package:perutrail/src/pages/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'src/steps/screen_one.dart';

int initScreen;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  initScreen = preferences.getInt('initScreen');
  await preferences.setInt('initScreen', 1);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(
        primaryColor: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: initScreen == 0 || initScreen == null ? 'onboard' : 'login',
      routes: {
        'login': (context) => LoginPage(),
        'onboard': (context) => OnBoardingScreenOne(),
      },
    );
  }
}
