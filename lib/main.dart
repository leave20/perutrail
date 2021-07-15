import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perutrail/src/routes/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';


int initScreen;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  initScreen = preferences.getInt('initScreen');
  await preferences.setInt('initScreen', 1);

  // await FirebaseAuth.instance;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorKey: Get.key,
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(
        primaryColor: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: initScreen == 0 || initScreen == null ? "/onboard" : "/home",
      getPages: routes(),
    );
  }
}




