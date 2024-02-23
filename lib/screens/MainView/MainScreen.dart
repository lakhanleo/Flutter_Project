import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:tripbud/screens/BottomTabSreens/ExploreScreen.dart';
import 'package:tripbud/screens/BottomTabSreens/AccountScreen.dart';
import 'package:tripbud/screens/BottomTabSreens/ChatScreen.dart';

import '../../controllers/main_view_Controller.dart';
import '../BottomTabSreens/HomeScreen.dart';
import '../BottomTabSreens/SearchScreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  final MainViewController controller = Get.put(MainViewController());
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("TripBud"),
      // ),
      body: PageView(
        onPageChanged: controller.animateToTab,
        controller: controller.pageController, // allowImplicitScrolling: false,
        physics: const BouncingScrollPhysics(decelerationRate: ScrollDecelerationRate.fast),pageSnapping: true,
        // physics: const NeverScrollableScrollPhysics(),
        children: const [
          ExploreScreen(),
          SearchScreen(),
          ChatScreen(),
          AccountScreen(),
          HomeScreen()
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.green,
        padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GNav(
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.green.shade200,padding: EdgeInsets.symmetric(horizontal: 5,vertical: 8),
            backgroundColor: Colors.green,
            onTabChange: (index) {
              setState(() {
                currentIndex = index;
                controller.goToTab(index);
              });
            },
            gap: 4,
              tabs: [
             GButton(icon: CupertinoIcons.compass,text: "EXPLORE",),
             GButton(icon: CupertinoIcons.search,text: "SEARCH",),
             GButton(icon: CupertinoIcons.chat_bubble_2,text: "CHAT AI",),
             GButton(icon: CupertinoIcons.profile_circled,text: "PROFILE",),
          ]),
        ),
      ),
    );
  }
}
