import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool darkMode = true;
  bool sound = false;
  bool notification = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: const Color(0xff262A2E),
        appBar: AppBar(
          title: Text(
            'Settings',
            style: TextStyle(
                fontSize: height * 0.045,
                color: const Color(0xffEBF4FA),
                // fontWeight: FontWeight.bold,
                fontFamily: 'PoppinsBold'),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
              vertical: height * 0.03, horizontal: width * 0.03),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: height * 0.01),
                  child: Neumorphic(
                    style: NeumorphicStyle(
                      depth: -3,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(20)),
                      shadowDarkColorEmboss: Colors.white38,
                      shadowLightColorEmboss: Colors.black,
                      color: const Color(0xff282C31),
                    ),
                    child: Container(
                        height: height * 0.08,
                        width: width * 0.95,
                        color: Colors.transparent,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              // margin: EdgeInsets.only(left: width * 0.03),
                              width: width * 0.1,
                              color: Colors.blue,
                              alignment: Alignment.center,
                              child: const Icon(
                                Icons.wifi_2_bar_outlined,
                                color: Color(0xff282C31),
                              ),
                            ),
                            Container(
                              // margin: EdgeInsets.symmetric(
                              //     horizontal: width * 0.03),
                              // color: Colors.blue,
                              // alignment: Alignment.center,
                              width: width * 0.45,
                              child: Text(
                                'Connectivity',
                                style: TextStyle(
                                    color: const Color(0xffEBF4FA),
                                    fontSize: height * 0.020,
                                    fontFamily: 'PoppinsMedium'),
                              ),
                            ),
                            Container(
                              height: height * 0.1,
                              width: width * 0.005,
                              decoration: const BoxDecoration(
                                // color: Colors.grey,
                                gradient: RadialGradient(
                                  colors: [
                                    Colors.blue,
                                    Colors.transparent,
                                  ],
                                  radius: 20.0,
                                ),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(right: width * 0.11),
                                // color: Colors.blue,
                                alignment: Alignment.center,
                                child: Center(
                                  child: Text(
                                    'Wifi',
                                    style: TextStyle(
                                        color: const Color(0xffEBF4FA),
                                        fontSize: height * 0.015,
                                        fontFamily: 'PoppinsMedium'),
                                  ),
                                )),
                          ],
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: height * 0.01),
                  child: Neumorphic(
                    style: NeumorphicStyle(
                      depth: -3,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(20)),
                      shadowDarkColorEmboss: Colors.white38,
                      shadowLightColorEmboss: Colors.black,
                      color: const Color(0xff282C31),
                    ),
                    child: Container(
                        height: height * 0.08,
                        width: width * 0.95,
                        color: Colors.transparent,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              // margin: EdgeInsets.only(left: width * 0.03),
                              width: width * 0.1,
                              color: Colors.blue,
                              alignment: Alignment.center,
                              child: const Icon(
                                Icons.sunny,
                                color: Color(0xff282C31),
                              ),
                            ),
                            Container(
                              // margin: EdgeInsets.symmetric(
                              //     horizontal: width * 0.03),
                              // color: Colors.blue,
                              // alignment: Alignment.center,
                              width: width * 0.45,
                              child: Text(
                                'Dark Mode',
                                style: TextStyle(
                                    color: const Color(0xffEBF4FA),
                                    fontSize: height * 0.020,
                                    fontFamily: 'PoppinsMedium'),
                              ),
                            ),
                            Container(
                              height: height * 0.1,
                              width: width * 0.005,
                              decoration: const BoxDecoration(
                                // color: Colors.grey,
                                gradient: RadialGradient(
                                  colors: [
                                    Colors.blue,
                                    Colors.transparent,
                                  ],
                                  radius: 20.0,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: width * 0.01),
                              // color: Colors.blue,
                              alignment: Alignment.center,

                              child: CupertinoSwitch(
                                value: darkMode,
                                onChanged: (value) {
                                  setState(() {
                                      darkMode = value;
                                    },
                                  );
                                },
                                thumbColor: Color(0xffEBF4FA),
                                activeColor: CupertinoColors.activeBlue,
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: height * 0.01),
                  child: Neumorphic(
                    style: NeumorphicStyle(
                      depth: -3,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(20)),
                      shadowDarkColorEmboss: Colors.white38,
                      shadowLightColorEmboss: Colors.black,
                      color: const Color(0xff282C31),
                    ),
                    child: Container(
                        height: height * 0.08,
                        width: width * 0.95,
                        color: Colors.transparent,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              // margin: EdgeInsets.only(left: width * 0.03),
                              width: width * 0.1,
                              color: Colors.blue,
                              alignment: Alignment.center,
                              child: const Icon(
                                Icons.notifications,
                                color: Color(0xff282C31),
                              ),
                            ),
                            Container(
                              // margin: EdgeInsets.symmetric(
                              //     horizontal: width * 0.03),
                              // color: Colors.blue,
                              // alignment: Alignment.center,
                              width: width * 0.45,
                              child: Text(
                                'Notification',
                                style: TextStyle(
                                    color: const Color(0xffEBF4FA),
                                    fontSize: height * 0.020,
                                    fontFamily: 'PoppinsMedium'),
                              ),
                            ),
                            Container(
                              height: height * 0.1,
                              width: width * 0.005,
                              decoration: const BoxDecoration(
                                // color: Colors.grey,
                                gradient: RadialGradient(
                                  colors: [
                                    Colors.blue,
                                    Colors.transparent,
                                  ],
                                  radius: 20.0,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: width * 0.01),
                              // color: Colors.blue,
                              alignment: Alignment.center,

                              child:CupertinoSwitch(
                                value: notification,
                                onChanged: (value) {
                                  setState(() {
                                    notification = value;
                                  },
                                  );
                                },
                                thumbColor: Color(0xffEBF4FA),
                                activeColor: CupertinoColors.activeBlue,
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: height * 0.01),
                  child: Neumorphic(
                    style: NeumorphicStyle(
                      depth: -3,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(20)),
                      shadowDarkColorEmboss: Colors.white38,
                      shadowLightColorEmboss: Colors.black,
                      color: const Color(0xff282C31),
                    ),
                    child: Container(
                        height: height * 0.08,
                        width: width * 0.95,
                        color: Colors.transparent,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              // margin: EdgeInsets.only(left: width * 0.03),
                              width: width * 0.1,
                              color: Colors.blue,
                              alignment: Alignment.center,
                              child: const Icon(
                                Icons.vibration,
                                color: Color(0xff282C31),
                              ),
                            ),
                            Container(
                              // margin: EdgeInsets.symmetric(
                              //     horizontal: width * 0.03),
                              // color: Colors.blue,
                              // alignment: Alignment.center,
                              width: width * 0.45,
                              child: Text(
                                'Sound',
                                style: TextStyle(
                                    color: const Color(0xffEBF4FA),
                                    fontSize: height * 0.020,
                                    fontFamily: 'PoppinsMedium'),
                              ),
                            ),
                            Container(
                              height: height * 0.1,
                              width: width * 0.005,
                              decoration: const BoxDecoration(
                                // color: Colors.grey,
                                gradient: RadialGradient(
                                  colors: [
                                    Colors.blue,
                                    Colors.transparent,
                                  ],
                                  radius: 20.0,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: width * 0.01),
                              // color: Colors.blue,
                              alignment: Alignment.center,

                              child: CupertinoSwitch(
                                value: sound,
                                onChanged: (value) {
                                  setState(() {
                                    sound = value;
                                  },
                                  );
                                },
                                thumbColor: Color(0xffEBF4FA),
                                activeColor: CupertinoColors.activeBlue,
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:height *0.3,bottom: height * 0.01),
                  child: Neumorphic(
                    style: NeumorphicStyle(
                      depth: -3,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(20)),
                      shadowDarkColorEmboss: Colors.white38,
                      shadowLightColorEmboss: Colors.black,
                      color: const Color(0xff282C31),
                    ),
                    child: Container(
                        height: height * 0.08,
                        width: width * 0.95,
                        color: Colors.transparent,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              // margin: EdgeInsets.only(left: width * 0.03),
                              width: width * 0.05,
                              color: Colors.blue,
                              alignment: Alignment.center,

                            ),
                            Container(
                              // margin: EdgeInsets.symmetric(
                              //     horizontal: width * 0.03),
                              // color: Colors.blue,
                              alignment: Alignment.center,
                              width: width * 0.45,
                              child: Text(
                                'Logout',
                                style: TextStyle(
                                    color: const Color(0xffEBF4FA),
                                    fontSize: height * 0.020,
                                    fontFamily: 'PoppinsMedium'),
                              ),
                            ),
                            Container(
                              // margin: EdgeInsets.only(left: width * 0.03),
                              width: width * 0.05,
                              color: Colors.blue,
                              alignment: Alignment.center,

                            ),

                          ],
                        )),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
