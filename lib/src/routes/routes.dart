import 'package:get/get.dart';
import 'package:perutrail/src/pages/home_page.dart';
import 'package:perutrail/src/pages/login_page.dart';
import 'package:perutrail/src/steps/screen_one.dart';

routes()=>[
  GetPage(name: "/onboard", page:()=> OnBoardingScreenOne()),
  GetPage(name: "/login", page: ()=>LoginPage()),
];

