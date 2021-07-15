import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perutrail/controllers/home_controller.dart';
import 'package:perutrail/src/pages/favorite_page.dart';
import 'package:perutrail/src/pages/profile_page.dart';
import 'package:perutrail/src/pages/search_page.dart';

class HomePage extends StatelessWidget {

  final controller=Get.put(HomeController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Bottom Bar'),
        centerTitle: true,
      ),
      body: SizedBox.expand(
        child: PageView(
          physics: ScrollPhysics(
            parent: NeverScrollableScrollPhysics(),
          ),
          children: [
            ProfilePage(),
            FavoritePage(),
            Center(
              child: Container(
                child: Text('Home Page'),
              ),
            ),
            SearchPage()
          ],
          controller: controller.pageController,
        ),
      ),
      bottomNavigationBar: Obx(

            () =>
            FancyBottomNavigation(tabs: [

              TabData(iconData: Icons.person, title: 'Profile',),
              TabData(iconData: Icons.favorite, title: 'Favorite',),
              TabData(iconData: Icons.home, title: 'Home',),
              TabData(iconData: Icons.location_searching, title: 'Map',),
              // TabData(iconData: Icons.notifications, title: 'Notification',),
            ], onTabChangedListener: (position) {
              controller.currentIndex.value = position;
              controller.pageController.jumpToPage(position);
            },
              initialSelection: controller.currentIndex.value,
              key:controller.bottomNavigationKey,
              circleColor: Colors.amber,
              inactiveIconColor: Colors.blueGrey.shade900,
              activeIconColor: Colors.white,
            ),

      ),
    );
  }
}
