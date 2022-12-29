import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:dashboard/screens/routine.dart';
import 'package:dashboard/screens/setting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../dashboard.dart';
import 'home.dart';

class ManiNaveBar extends StatefulWidget {
  const ManiNaveBar({Key? key}) : super(key: key);

  @override
  State<ManiNaveBar> createState() => _ManiNaveBarState();
}

class _ManiNaveBarState extends State<ManiNaveBar> {
  int page = 0;
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  final screens = [const HomeScreen(), DashBoard(),const RoutineScreen(),const SettingScreen()];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBody: true,
      body: screens[page],
      bottomNavigationBar: CurvedNavigationBar(
        key: navigationKey,
        height: height * 0.07,
        index: page,

        color: const Color(0xffEBF4FA),
        buttonBackgroundColor: Colors.transparent,
        // buttonBackgroundColor: Color(0xffEBF4FA),
        // backgroundColor:  const Color(0xffEEF0FE),
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeOutExpo,
        animationDuration: const Duration(milliseconds: 500),
        onTap: (index) {
          setState(() {
            page = index;
          });
        },
        letIndexChange: (index) => true,
        items: const <Widget>[
          Icon(Icons.house,),
          Icon(Icons.dashboard),
          Icon(Icons.schedule),
          Icon(Icons.settings),
        ],
      ),
    );
  }

  GestureDetector buttons(String name, Widget pageName, Image image) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        setState(() {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => pageName),
          );
        });
      },
      child: Container(
        margin: const EdgeInsets.all(15),
        padding: EdgeInsets.only(top: height * 0.01),
        height: height * 0.50,
        width: width * 0.4,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: height * 0.16, child: image),
            Container(
              width: width * 0.5,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.8),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: Center(
                child: Text(
                  name,
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Nexa',
                    fontSize: height * 0.02,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
