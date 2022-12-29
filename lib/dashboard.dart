// import 'package:flutter/cupertino.dart';
import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;

class DashBoard extends StatefulWidget {
  // const SecondDashBoard({required Key key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  //"mailto:ceo@onwords.in?subject=Requesting%20for%20features%20installation&body=test%20body"
  //
  // String email =
  //     "mailto:ceo@onwords.in?subject=Requesting%20for%20features%20installation";
  //
  // bool Darkmode = true;
  //
  // bool openPressed = true;
  // bool pausePressed = true;
  // bool closePressed = true;
  //
  // var sessionId;
  //
  // getData() async {
  //   final res = await http.post(
  //     Uri.parse('https://api.ajax.systems/api/login'),
  //     headers: <String, String>{
  //       'X-Api-Key': 'sUBNiTmftV2s4QztTeW9cZc/RekSRbdo',
  //     },
  //     body: jsonEncode(<String, String>{
  //       "login": "nikhil@onwords.in",
  //       "passwordHash": "Esu@9095",
  //       "userRole": "USER"
  //     }),
  //   );
  //   var data = jsonDecode(res.body);
  //   // print(data);
  //   setState(() {
  //     sessionId = data['sessionToken'];
  //     // print(sessionId);
  //     makeGetRequest();
  //   });
  // }
  //
  // var data;
  // var status = '';
  //
  // Future makeGetRequest() async {
  //   final response = await http.get(
  //     Uri.parse('https://api.ajax.systems/api/user/58F75F2C/hubs/00133109'),
  //     headers: <String, String>{
  //       'X-Session-Token': sessionId,
  //       'X-Api-Key': 'sUBNiTmftV2s4QztTeW9cZc/RekSRbdo'
  //     },
  //   );
  //   data = jsonDecode(response.body);
  //
  //   setState(() {
  //     status = data["state"];
  //     print(status);
  //   });
  //
  //   if (response.statusCode == 200) {
  //     return jsonDecode(response.body);
  //   } else {
  //     throw Exception('Failed to load');
  //   }
  // }
  //
  // arming() async {
  //   await http
  //       .put(
  //         Uri.parse(
  //             'https://api.ajax.systems/api/user/58F75F2C/hubs/00133109/commands/arming'),
  //         headers: <String, String>{
  //           'X-Session-Token': sessionId,
  //           'X-Api-Key': 'sUBNiTmftV2s4QztTeW9cZc/RekSRbdo'
  //         },
  //         body: jsonEncode(
  //             <String, dynamic>{"command": "ARM", "ignoreProblems": true}),
  //       )
  //       .then((value) => makeGetRequest());
  // }
  //
  // disarming() async {
  //   await http
  //       .put(
  //         Uri.parse(
  //             'https://api.ajax.systems/api/user/58F75F2C/hubs/00133109/commands/arming'),
  //         headers: <String, String>{
  //           'X-Session-Token': sessionId,
  //           'X-Api-Key': 'sUBNiTmftV2s4QztTeW9cZc/RekSRbdo'
  //         },
  //         body: jsonEncode(
  //             <String, dynamic>{"command": "DISARM", "ignoreProblems": true}),
  //       )
  //       .then((value) => makeGetRequest());
  // }
  //
  // panic() async {
  //   await http.put(
  //     Uri.parse(
  //         'https://api.ajax.systems/api/user/58F75F2C/hubs/00133109/commands/panic'),
  //     headers: <String, String>{
  //       'X-Session-Token': sessionId,
  //       'X-Api-Key': 'sUBNiTmftV2s4QztTeW9cZc/RekSRbdo'
  //     },
  //     body: jsonEncode(<String, dynamic>{
  //       "location": {
  //         "latitude": 0,
  //         "longitude": 0,
  //         "accuracy": 0,
  //         "speed": 0,
  //         "timestamp": 0
  //       }
  //     }),
  //   );
  // }
  //
  // @override
  // void initState() {
  //   super.initState();
  //   // Future.delayed(Duration.zero, () {
  //   //   this.showAlertDialog(context);
  //   // });
  //   getData();
  //   Darkmode;
  //   makeGetRequest();
  // }
  //
  // // bool open = false;
  // // bool pause = false;
  // // bool close = false;
  // bool ss = false;
  // bool longpress = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xff262A2E),
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: height * 0.03, horizontal: width * 0.03),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 0),
              child: Text(
                'Dashboard',
                style: TextStyle(
                    fontSize: height * 0.045,
                    color: const Color(0xffEBF4FA),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'PoppinsBold'),
              ),
            ),
            Container(
              color: Colors.transparent,
              height: height * 0.85,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: height * 0.015),
                      child: Text(
                        'Power Source',
                        style: TextStyle(
                            fontSize: height * 0.025,
                            color: const Color(0xffEBF4FA),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'PoppinsMedium'),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Neumorphic(
                          style: NeumorphicStyle(
                            depth: -5,
                            boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(20)),
                            shadowDarkColorEmboss: Colors.white38,
                            shadowLightColorEmboss: Colors.black,
                            color: const Color(0xff282C31),
                          ),
                          child: Container(
                            height: height * 0.10,
                            width: width * 0.45,
                            color: Colors.transparent,
                            child: const Center(
                                child: Text(
                              'inverter ',
                              style: TextStyle(
                                  color: Color(0xffEBF4FA),
                                  fontFamily: 'PoppinsBold'),
                            )),
                          ),
                        ),
                        Neumorphic(
                          style: NeumorphicStyle(
                            depth: -5,
                            boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(20)),
                            shadowDarkColorEmboss: Colors.white38,
                            shadowLightColorEmboss: Colors.black,
                            color: const Color(0xff282C31),
                          ),
                          child: Container(
                            height: height * 0.10,
                            width: width * 0.45,
                            color: Colors.transparent,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                CircleAvatar(
                                  backgroundColor: Colors.blue,
                                  radius: 10,
                                ),
                                Text(
                                  'EB',
                                  style: TextStyle(
                                      color: Color(0xffEBF4FA),
                                      fontFamily: 'PoppinsBold'),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: height * 0.02),
                      child: Neumorphic(
                        style: NeumorphicStyle(
                          depth: -5,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(20)),
                          shadowDarkColorEmboss: Colors.white38,
                          shadowLightColorEmboss: Colors.black,
                          color: const Color(0xff282C31),
                        ),
                        child: Container(
                            height: height * 0.10,
                            width: width * 0.95,
                            color: Colors.transparent,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Remaining Battery',
                                  style: TextStyle(
                                      color: const Color(0xffEBF4FA),
                                      fontSize: height * 0.020,
                                      fontFamily: 'PoppinsBold'),
                                ),
                                CircularPercentIndicator(
                                  backgroundColor: const Color(0xff262A2E),
                                  radius: height * 0.054,
                                  lineWidth: 5.0,
                                  animation: true,
                                  percent: 0.4,
                                  center: Text(
                                    "40 %",
                                    style: TextStyle(
                                      fontSize: height * 0.013,
                                      fontFamily: 'PoppinsBold',
                                      color: const Color(0xffEBF4FA),
                                    ),
                                  ),
                                  circularStrokeCap: CircularStrokeCap.round,
                                  progressColor: Colors.blue,
                                ),
                              ],
                            )),
                      ),
                    ),
                    Container(
                      height: height * 0.002,
                      decoration: const BoxDecoration(
                        // color: Colors.grey,
                        gradient: RadialGradient(
                          colors: [
                            Colors.blue,
                            Colors.transparent,
                          ],
                          radius: 150.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: height * 0.02),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Neumorphic(
                            style: NeumorphicStyle(
                              depth: -5,
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(20)),
                              shadowDarkColorEmboss: Colors.white38,
                              shadowLightColorEmboss: Colors.black,
                              color: const Color(0xff282C31),
                            ),
                            child: Container(
                              height: height * 0.38,
                              width: width * 0.35,
                              color: Colors.transparent,
                              child: Center(
                                child: LiquidLinearProgressIndicator(
                                  value: 0.5,
                                  // Defaults to 0.5.
                                  valueColor: const AlwaysStoppedAnimation(
                                    Colors.blue,
                                  ),
                                  // Defaults to the current Theme's accentColor.
                                  backgroundColor: Colors.transparent,
                                  // Defaults to the current Theme's backgroundColor.
                                  borderColor: Colors.black,
                                  borderWidth: 0,
                                  borderRadius: 20.0,
                                  direction: Axis.vertical,
                                  // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.horizontal.
                                  center: Text(
                                    "50 %",
                                    style: TextStyle(
                                        color: const Color(0xffEBF4FA),
                                        fontSize: height * 0.03,
                                        fontFamily: 'PoppinsBold'),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: width * 0.05),
                            child: Column(
                              children: [
                                Neumorphic(
                                  style: NeumorphicStyle(
                                    depth: -5,
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.circular(20)),
                                    shadowDarkColorEmboss: Colors.white38,
                                    shadowLightColorEmboss: Colors.black,
                                    color: const Color(0xff282C31),
                                  ),
                                  child: Container(
                                      height: height * 0.23,
                                      width: width * 0.53,
                                      color: Colors.transparent,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          buildText('Voltage', '151'),
                                          buildText('Current', '12.78'),
                                          buildText('Unit', '12.0'),
                                        ],
                                      )),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: height * 0.02),
                                  height: height * 0.002,
                                  width: width * 0.5,
                                  decoration: const BoxDecoration(
                                    // color: Colors.grey,
                                    gradient: RadialGradient(
                                      colors: [
                                        Colors.blue,
                                        Colors.transparent,
                                      ],
                                      radius: 100.0,
                                    ),
                                  ),
                                ),
                                Neumorphic(
                                  style: NeumorphicStyle(
                                    depth: -5,
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.circular(20)),
                                    shadowDarkColorEmboss: Colors.white38,
                                    shadowLightColorEmboss: Colors.black,
                                    color: const Color(0xff282C31),
                                  ),
                                  child: Container(
                                    height: height * 0.10,
                                    width: width * 0.53,
                                    color: Colors.transparent,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: height * 0.005),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'EB BILL',
                                          style: TextStyle(
                                              fontSize: height * 0.018,
                                              fontFamily: 'PoppinsBold',
                                              color: Colors.grey.shade100),
                                        ),
                                        buildColumnText("Today's Bill", '125'),
                                        buildColumnText("Total Bill", '1325'),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: height * 0.002,
                      decoration: const BoxDecoration(
                        gradient: RadialGradient(
                          colors: [
                            Colors.blue,
                            Colors.transparent,
                          ],
                          radius: 150.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: height * 0.02),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              const Center(
                                  child: Text(
                                'Security',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'PoppinsBold'),
                              )),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: height * 0.01),
                                child: Neumorphic(
                                  style: NeumorphicStyle(
                                    depth: -5,
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.circular(20)),
                                    shadowDarkColorEmboss: Colors.white38,
                                    shadowLightColorEmboss: Colors.black,
                                    color: const Color(0xff282C31),
                                  ),
                                  child: Container(
                                    height: height * 0.10,
                                    width: width * 0.45,
                                    color: Colors.transparent,
                                    child: Icon(
                                      Icons.lock,
                                      color: Colors.grey.shade100,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              const Center(
                                  child: Text(
                                'Total Systems',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'PoppinsBold'),
                              )),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: height * 0.01),
                                child: Neumorphic(
                                  style: NeumorphicStyle(
                                    depth: -5,
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.circular(20)),
                                    shadowDarkColorEmboss: Colors.white38,
                                    shadowLightColorEmboss: Colors.black,
                                    color: const Color(0xff282C31),
                                  ),
                                  child: Container(
                                    height: height * 0.10,
                                    width: width * 0.45,
                                    color: Colors.transparent,
                                    child: const Center(
                                        child: Text(
                                      '15 ',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'PoppinsBold'),
                                    )),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: height * 0.002,
                      decoration: const BoxDecoration(
                        gradient: RadialGradient(
                          colors: [
                            Colors.blue,
                            Colors.transparent,
                          ],
                          radius: 150.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: height * 0.02),
                      child: Column(
                        children: [
                          const Center(
                            child: Text(
                              'Gate Controls',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'PoppinsBold'),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: height * 0.01),
                                child: Neumorphic(
                                  style: NeumorphicStyle(
                                    depth: -5,
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.circular(20)),
                                    shadowDarkColorEmboss: Colors.white38,
                                    shadowLightColorEmboss: Colors.black,
                                    color: const Color(0xff282C31),
                                  ),
                                  child: Container(
                                    height: height * 0.10,
                                    width: width * 0.45,
                                    color: Colors.transparent,
                                    alignment: Alignment.center,
                                    child: const Text(
                                      'Single Gate',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'PoppinsBold'),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: height * 0.01),
                                child: Neumorphic(
                                  style: NeumorphicStyle(
                                    depth: -5,
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.circular(20)),
                                    shadowDarkColorEmboss: Colors.white38,
                                    shadowLightColorEmboss: Colors.black,
                                    color: const Color(0xff282C31),
                                  ),
                                  child: Container(
                                    height: height * 0.10,
                                    width: width * 0.45,
                                    color: Colors.transparent,
                                    alignment: Alignment.center,
                                    child: const Text(
                                      'Both Gate',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'PoppinsBold'),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: height * 0.05),
                      height: height * 0.002,
                      decoration: const BoxDecoration(
                        gradient: RadialGradient(
                          colors: [
                            Colors.blue,
                            Colors.transparent,
                          ],
                          radius: 150.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildColumnText(String head, String value) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            head,
            style: TextStyle(
                fontSize: height * 0.015,
                fontFamily: 'PoppinsMedium',
                color: Colors.grey.shade100),
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: height * 0.013,
            fontFamily: 'PoppinsMedium',
            color: Colors.grey.shade100,
          ),
        ),
      ],
    );
  }

  Widget buildText(String head, String value) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              color: Colors.transparent,
              width: width * 0.20,
              child: Text(
                head,
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: height * 0.025,
                    fontFamily: 'PoppinsRegular',
                    color: Colors.grey.shade100),
              ),
            ),
            Container(
              color: Colors.transparent,
              width: width * 0.20,
              child: Text(value,
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      fontSize: height * 0.020,
                      fontFamily: 'PoppinsRegular',
                      color: Colors.grey.shade100)),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: height * 0.01),
          child: Container(
            height: height * 0.002,
            width: width * 0.3,
            decoration: const BoxDecoration(
              gradient: RadialGradient(
                colors: [
                  Colors.blue,
                  Colors.transparent,
                ],
                radius: 50.0,
              ),
            ),
          ),
        ),
      ],
    );
  }

  showAlertDialog(
    BuildContext context,
  ) {
    // Create button
    // Widget okButton = TextButton(
    //   style:
    //       ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
    //   child: const Text("Contact"),
    //   onPressed: () async {
    //     if (await canLaunch(email)) {
    //       await launch(
    //         email,
    //         forceSafariVC: false,
    //         forceWebView: false,
    //       );
    //     } else {
    //       print(' could not launch $email');
    //     }
    //   },
    // );
    // Create AlertDialog....
    // AlertDialog alert = AlertDialog(
    //   backgroundColor: Colors.black87,
    //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
    //   title: const Text(
    //     "DashBoard Installation ",
    //     style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold),
    //   ),
    //   content: const Text(
    //     "Enable Dashboard by installing the feature ",
    //     style: TextStyle(color: Colors.white70),
    //   ),
    //   actions: [
    //     okButton,
    //   ],
    // );
    // show the dialog
    // showDialog(
    //   context: context,
    //   builder: (BuildContext context) {
    //     return alert;
    //   },
    // );
  }
}

// GestureDetector(
// onTap: () async {
// setState(() {
// armPressed = !armPressed;
// });
// await http.put(
// Uri.parse('https://api.ajax.systems/api/user/58F75F2C/hubs/00133109/commands/arming'),
// headers: <String, String>{
// 'X-Session-Token': sessionId, 'X-Api-Key': 'sUBNiTmftV2s4QztTeW9cZc/RekSRbdo'},
//
// body: jsonEncode(<String, dynamic>{
// "command": "ARM",
// "ignoreProblems": true
// }),
// );
// // print('presseed.................');
//
//
//
// },
// child: Listener(
// onPointerUp: (_) => setState(() {
// armPressed = false;
// }),
// onPointerDown: (_) => setState(() {
// armPressed = false;
// }),
// child: Container(
// // height: 200,
// // width: 200,
// // duration: Duration(milliseconds: 100),
// decoration: BoxDecoration(
// color: Darkmode
// ? Color(0xff1a1a1a)
// : Color(0xffE7ECEF),
// borderRadius: BorderRadius.circular(300),
// boxShadow: [
// BoxShadow(
// blurRadius: armPressed ? 5.0 : 30.0,
// offset: armPressed
// ? -Offset(6, 8)
// : -Offset(10, 10),
// color: Darkmode
// ? Colors.black12
//     : Colors.white54,
// inset: armPressed,
// ),
// BoxShadow(
// blurRadius: armPressed ? 5.0 : 30.0,
// offset: armPressed
// ? Offset(6, 8)
// : Offset(10, 10),
// color: Darkmode
// ? Color(0xff262626)
// : Color(0xffA7A9AF),
// inset: armPressed,
// // inset: true,
// ),
// ]),
// child: CircleAvatar(
// radius: 40,
// foregroundColor: Colors.transparent,
// backgroundColor: Colors.transparent,
// // height: height * 0.09,
// // width: width * 0.20,
// child: Center(
// child: Text(
// "Arm",
// style: TextStyle(
// fontSize: height * 0.011,
// color: Colors.grey.shade400,
// fontWeight: FontWeight.w800,
// // fontFamily: "Nexa",
// letterSpacing: 1),
// ),
// ),
// ),
// ),
// ),
// ),
// GestureDetector(
// onTap: () async{
// setState(() {
// disarmPressed = !disarmPressed;
// });
// await http.put(
// Uri.parse('https://api.ajax.systems/api/user/58F75F2C/hubs/00133109/commands/arming'),
// headers: <String, String>{
// 'X-Session-Token': sessionId, 'X-Api-Key': 'sUBNiTmftV2s4QztTeW9cZc/RekSRbdo'},
//
// body: jsonEncode(<String, dynamic>{
// "command": "DISARM",
// "ignoreProblems": true
// }),
// );
//
//
//
// },
// child: Listener(
// onPointerUp: (_) => setState(() {
// disarmPressed = false;
// }),
// onPointerDown: (_) => setState(() {
// disarmPressed = false;
// }),
// child: Container(
// // height: 200,
// // width: 200,
// // duration: Duration(milliseconds: 100),
// decoration: BoxDecoration(
// color: Darkmode
// ? Color(0xff1a1a1a)
// : Color(0xffE7ECEF),
// borderRadius: BorderRadius.circular(300),
// boxShadow: [
// BoxShadow(
// blurRadius: disarmPressed ? 5.0 : 30.0,
// offset: disarmPressed
// ? -Offset(6, 8)
// : -Offset(10, 10),
// color: Darkmode
// ? Colors.black12
//     : Colors.white54,
// inset: disarmPressed,
// ),
// BoxShadow(
// blurRadius: disarmPressed ? 5.0 : 30.0,
// offset: disarmPressed
// ? Offset(6, 8)
// : Offset(10, 10),
// color: Darkmode
// ? Color(0xff262626)
// : Color(0xffA7A9AF),
// inset: disarmPressed,
// // inset: true,
// ),
// ]),
// child: CircleAvatar(
// radius: 40,
// foregroundColor: Colors.transparent,
// backgroundColor: Colors.transparent,
// // height: height * 0.09,
// // width: width * 0.20,
// child: Center(
// child: Text(
// "DisArm",
// style: TextStyle(
// color: Colors.grey.shade400,
// fontSize: height * 0.011,
// fontWeight: FontWeight.w800,
// // fontFamily: "Nexa",
// letterSpacing: 1),
// ),
// ),
// ),
// ),
// ),
// ),
// GestureDetector(
// onTap: () async{
// setState(() {
// panicPressed = !panicPressed;
// });
// await http.put(
// Uri.parse('https://api.ajax.systems/api/user/58F75F2C/hubs/00133109/commands/arming'),
// headers: <String, String>{
// 'X-Session-Token': sessionId, 'X-Api-Key': 'sUBNiTmftV2s4QztTeW9cZc/RekSRbdo'},
//
// body: jsonEncode(<String, dynamic>{
// "command": "DISARM",
// "ignoreProblems": true
// }),
// );
//
//
//
// },
// child: Listener(
// onPointerUp: (_) => setState(() {
// panicPressed = false;
// }),
// onPointerDown: (_) => setState(() {
// panicPressed = false;
// }),
// child: Container(
// // height: 200,
// // width: 200,
// // duration: Duration(milliseconds: 100),
// decoration: BoxDecoration(
// color: Darkmode
// ? Color(0xff1a1a1a)
// : Color(0xffE7ECEF),
// borderRadius: BorderRadius.circular(300),
// boxShadow: [
// BoxShadow(
// blurRadius: panicPressed ? 5.0 : 30.0,
// offset: panicPressed
// ? -Offset(6, 8)
// : -Offset(10, 10),
// color: Darkmode
// ? Colors.black12
//     : Colors.white54,
// inset: panicPressed,
// ),
// BoxShadow(
// blurRadius: panicPressed ? 5.0 : 30.0,
// offset: panicPressed
// ? Offset(6, 8)
// : Offset(10, 10),
// color: Darkmode
// ? Color(0xff262626)
// : Color(0xffA7A9AF),
// inset: panicPressed,
// // inset: true,
// ),
// ]),
// child: CircleAvatar(
// radius: 40,
// foregroundColor: Colors.transparent,
// backgroundColor: Colors.transparent,
// // height: height * 0.09,
// // width: width * 0.20,
// child: Center(
// child: Text(
// "Panic",
// style: TextStyle(
// color: Colors.grey.shade400,
// fontSize: height * 0.011,
// fontWeight: FontWeight.w800,
// // fontFamily: "Nexa",
// letterSpacing: 1),
// ),
// ),
// ),
// ),
// ),
// ),

// body: SingleChildScrollView(
//   child: Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     mainAxisAlignment: MainAxisAlignment.start,
//     children: [
//       SizedBox(
//         // height: 40.0,
//         height: height * 0.045,
//       ),
//       Text(
//         "Dashboard",
//         style: GoogleFonts.inter(
//             fontSize: height * 0.033,
//             fontWeight: FontWeight.bold,
//             color: Colors.white),
//       ),
//       SizedBox(
//         // height: 30.0,
//         height: height * 0.033,
//       ),
//       Center(
//         child: Text(
//           "Power Source",
//           style: GoogleFonts.inter(
//               fontSize: height * 0.018, color: Colors.white),
//         ),
//       ),
//       SizedBox(
//         height: height * 0.011,
//       ),
//       Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Container(
//             // height: 80.0,
//             // width: 180.0,
//             height: height * 0.080,
//             width: width * 0.42,
//             decoration: BoxDecoration(
//               color: const Color.fromRGBO(64, 60, 60, 1.0),
//               borderRadius: BorderRadius.circular(20.0),
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 CircleAvatar(
//                   // child: SvgPicture.asset(
//                   //   "images/battery-svgrepo-com.svg",
//                   //   // height: 20.0,
//                   //   height: height * 0.022,
//                   //   color: Colors.red.shade100,
//                   // ),
//                   backgroundColor: Colors.orange,
//                   radius: height * 0.022,
//                 ),
//                 Text(
//                   "Inverter",
//                   style: GoogleFonts.inter(
//                       fontSize: height * 0.018,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             // height: 80.0,
//             // width: 180.0,
//             height: height * 0.080,
//             width: width * 0.42,
//             decoration: BoxDecoration(
//                 color: const Color.fromRGBO(64, 60, 60, 1.0),
//                 borderRadius: BorderRadius.circular(20.0)),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 CircleAvatar(
//                   // child: SvgPicture.asset(
//                   //   "images/eb.svg",
//                   //   // height: 20.0,
//                   //   height: height * 0.022,
//                   //   color: Colors.red.shade100,
//                   // ),
//                   backgroundColor: Colors.orange,
//                   radius: height * 0.022,
//                 ),
//                 Text(
//                   "Electricity",
//                   style: GoogleFonts.inter(
//                       fontSize: height * 0.017,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//       SizedBox(
//         // height: 20.0,
//         height: height * 0.022,
//       ),
//       Center(
//         child: Container(
//           // height: 80.0,
//           // width: 370.0,
//           height: height * 0.080,
//           width: width * 0.86,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(20.0),
//             gradient: const LinearGradient(
//                 begin: Alignment.bottomLeft,
//                 end: Alignment.topRight,
//                 colors: [
//                   Color.fromRGBO(64, 60, 60, 1.0),
//                   Color.fromRGBO(40, 26, 26, 1.0),
//                 ],
//                 stops: [
//                   0.1,
//                   0.9
//                 ]),
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Text(
//                 "Remaining Battery",
//                 style: GoogleFonts.inter(
//                     fontSize: height * 0.017,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white),
//               ),
//               CircularPercentIndicator(
//                 backgroundColor: const Color.fromRGBO(56, 56, 56, 1.0),
//                 radius: height * 0.054,
//                 lineWidth: 5.0,
//                 animation: true,
//                 percent: 0.4,
//                 center: const Text(
//                   "40 %",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 9.0,
//                       color: Colors.grey),
//                 ),
//                 circularStrokeCap: CircularStrokeCap.round,
//                 progressColor: const Color.fromRGBO(255, 82, 82, 1.0),
//               ),
//             ],
//           ),
//         ),
//       ),
//       SizedBox(
//         height: height * 0.022,
//       ),
//       Padding(
//         padding: const EdgeInsets.only(left: 18.0),
//         child: Text(
//           "Water level",
//           style: GoogleFonts.inter(
//             fontSize: height * 0.017,
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//       SizedBox(
//         height: height * 0.022,
//       ),
//       Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Container(
//             // height: 290.0,
//             // width: 120.0,
//             height: height * 0.32,
//             width: width * 0.29,
//             decoration: BoxDecoration(
//                 gradient: const LinearGradient(
//                     begin: Alignment.bottomLeft,
//                     end: Alignment.topRight,
//                     colors: [
//                       Color.fromRGBO(0, 22, 31, 1.0),
//                       Color.fromRGBO(0, 0, 0, 1.0),
//                     ],
//                     stops: [
//                       0.1,
//                       0.9
//                     ]),
//                 borderRadius: BorderRadius.circular(20.0)),
//             child: LiquidLinearProgressIndicator(
//               value: 0.5,
//               // Defaults to 0.5.
//               valueColor: const AlwaysStoppedAnimation(
//                 Color.fromRGBO(91, 156, 170, 1.0),
//               ),
//               // Defaults to the current Theme's accentColor.
//               backgroundColor: Colors.transparent,
//               // Defaults to the current Theme's backgroundColor.
//               borderColor: Colors.black,
//               borderWidth: 2.0,
//               borderRadius: 20.0,
//               direction: Axis.vertical,
//               // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.horizontal.
//               center: Text(
//                 "50 %",
//                 style:
//                     GoogleFonts.inter(color: Colors.grey, fontSize: 20.0),
//               ),
//             ),
//           ),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Center(
//                 child: Container(
//                   // height: 200.0,
//                   // width: 240.0,
//                   height: height * 0.23,
//                   width: width * 0.55,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20.0),
//                     gradient: const LinearGradient(
//                         begin: Alignment.bottomLeft,
//                         end: Alignment.bottomRight,
//                         colors: [
//                           Color.fromRGBO(66, 55, 143, 1.0),
//                           Color.fromRGBO(245, 56, 68, 1.0),
//                         ],
//                         stops: [
//                           0.1,
//                           0.9
//                         ]),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(10.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.stretch,
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             Text(
//                               "EB BILL",
//                               style: GoogleFonts.inter(
//                                 fontSize: height * 0.022,
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ],
//                         ),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.end,
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           children: [
//                             Text(
//                               "Today's Bill",
//                               style: GoogleFonts.inter(
//                                 fontSize: height * 0.015,
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             Text(
//                               " ₹  122.0",
//                               style: GoogleFonts.inter(
//                                 fontSize: height * 0.028,
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             Text(
//                               "Total Bill",
//                               style: GoogleFonts.inter(
//                                 fontSize: height * 0.013,
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             Text(
//                               " ₹ 1140.0",
//                               style: GoogleFonts.inter(
//                                 fontSize: height * 0.025,
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: height * 0.012,
//               ),
//               Center(
//                 child: Container(
//                   // height: 75.0,
//                   // width: 240.0,
//                   height: height * 0.075,
//                   width: width * 0.55,
//                   decoration: BoxDecoration(
//                       color: const Color.fromRGBO(70, 70, 70, 1.0),
//                       borderRadius: BorderRadius.circular(20.0)),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "Power",
//                             style: GoogleFonts.inter(
//                               fontSize: height * 0.014,
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           Text(
//                             "Consumption",
//                             style: GoogleFonts.inter(
//                               fontSize: height * 0.014,
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ],
//                       ),
//                       Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "Unit",
//                             style: GoogleFonts.inter(
//                               fontSize: height * 0.014,
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           Text(
//                             "215",
//                             style: GoogleFonts.inter(
//                               fontSize: height * 0.019,
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           )
//         ],
//       ),
//       SizedBox(
//         height: height * 0.022,
//       ),
//       Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Text(
//                 "Security System",
//                 style: GoogleFonts.inter(
//                     fontSize: height * 0.013, color: Colors.white),
//               ),
//               SizedBox(
//                 height: height * 0.011,
//               ),
//               GestureDetector(
//                 onTap: () {
//                   setState(() {
//                     status == 'DISARMED' ? arming() : disarming();
//                   });
//                 },
//                 onLongPress: () {
//                   setState(() {
//                     panic();
//                   });
//                 },
//                 child: Container(
//                   // height: 70.0,
//                   // width: 170.0,
//                   height: height * 0.078,
//                   width: width * 0.40,
//                   decoration: BoxDecoration(
//                       color: Color(0xff1a1a1a),
//                       // color: Color.fromRGBO(0, 179, 0, 1.0),
//                       borderRadius: BorderRadius.circular(20.0)),
//                   child: Center(
//                     child: Center(
//                       child: Text(
//                         status == 'ARMED' ? 'DISARMED' : 'ARMED',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: height * 0.015,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                     ),
//                     // Image(
//                     //   image: AssetImage(""),
//                     //   height: height * 0.033,
//                     // ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Text(
//                 "Total Running Devices",
//                 style: GoogleFonts.inter(
//                     fontSize: height * 0.013, color: Colors.white),
//               ),
//               SizedBox(
//                 height: height * 0.011,
//               ),
//               Container(
//                 // height: 70.0,
//                 // width: 170.0,
//                 height: height * 0.078,
//                 width: width * 0.40,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20.0),
//                   gradient: const LinearGradient(
//                       begin: Alignment.topRight,
//                       end: Alignment.bottomLeft,
//                       colors: [
//                         Color.fromRGBO(255, 174, 0, 1.0),
//                         Color.fromRGBO(255, 216, 133, 1.0),
//                       ],
//                       stops: [
//                         0.1,
//                         0.9
//                       ]),
//                 ),
//                 child: Center(
//                   child: Text(
//                     "24",
//                     style: GoogleFonts.inter(
//                         fontSize: height * 0.029,
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold),
//                   ),
//                 ),
//               ),
//             ],
//           )
//         ],
//       ),
//       SizedBox(
//         height: height * 0.011,
//       ),
//       //...........Door Control............................................
//       Center(
//         child: Column(
//           children: [
//             Text(
//               "Door Control",
//               style: TextStyle(
//                 color: Colors.white.withOpacity(.8),
//                 fontSize: height * 0.019,
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//             SizedBox(
//               height: height * 0.011,
//             ),
//             Container(
//               height: height * 0.18,
//               width: width * 0.9,
//               decoration: BoxDecoration(
//                   color: Darkmode
//                       ? const Color(0xff1a1a1a)
//                       : const Color(0xffE7ECEF),
//                   borderRadius: BorderRadius.circular(30)),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 // crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         openPressed = !openPressed;
//                         setState(() {
//                           // print("hey iam working value:$closeValue");
//                           // closeValue = !closeValue;
//                           // http.put(
//                           //   Uri.parse('http://192.168.1.18/sensor/2/'),
//                           //   headers: <String, String>{
//                           //     'Content-Type': 'application/json; charset=UTF-8',
//                           //   },
//                           //   body: jsonEncode(<String, bool>{
//                           //     "Door_Open": true,
//                           //   }),
//                           // );
//                         });
//                       });
//                     },
//                     child: Listener(
//                       onPointerUp: (_) => setState(() {
//                         openPressed = false;
//                       }),
//                       onPointerDown: (_) => setState(() {
//                         openPressed = false;
//                       }),
//                       child: Container(
//                         // height: 200,
//                         // width: 200,
//                         // duration: Duration(milliseconds: 100),
//                         decoration: BoxDecoration(
//                             color: Darkmode
//                                 ? Color(0xff1a1a1a)
//                                 : Color(0xffE7ECEF),
//                             borderRadius: BorderRadius.circular(300),
//                             boxShadow: [
//                               BoxShadow(
//                                 blurRadius: openPressed ? 5.0 : 30.0,
//                                 offset: openPressed
//                                     ? -Offset(6, 8)
//                                     : -Offset(10, 10),
//                                 color: Darkmode
//                                     ? Colors.black12
//                                     : Colors.white54,
//                                 inset: openPressed,
//                               ),
//                               BoxShadow(
//                                 blurRadius: openPressed ? 5.0 : 30.0,
//                                 offset: openPressed
//                                     ? Offset(6, 8)
//                                     : Offset(10, 10),
//                                 color: Darkmode
//                                     ? Color(0xff262626)
//                                     : Color(0xffA7A9AF),
//                                 inset: openPressed,
//                                 // inset: true,
//                               ),
//                             ]),
//                         child: CircleAvatar(
//                           radius: 50,
//                           foregroundColor: Colors.transparent,
//                           backgroundColor: Colors.transparent,
//                           // height: height * 0.09,
//                           // width: width * 0.20,
//                           child: Center(
//                             child: Text(
//                               "Single",
//                               style: TextStyle(
//                                   fontSize: height * 0.018,
//                                   color: Colors.grey.shade400,
//                                   fontWeight: FontWeight.w800,
//                                   // fontFamily: "Nexa",
//                                   letterSpacing: 1),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   // GestureDetector(
//                   //   onTap: () {
//                   //     setState(() {
//                   //       pausePressed = !pausePressed;
//                   //       http.put(
//                   //         Uri.parse('http://192.168.1.18/sensor/2/'),
//                   //         headers: <String, String>{
//                   //           'Content-Type': 'application/json; charset=UTF-8',
//                   //         },
//                   //         body: jsonEncode(<String, bool>{
//                   //           "Door_Pause": true,
//                   //         }),
//                   //       );
//                   //
//                   //     });
//                   //   },
//                   //   child: Listener(
//                   //     onPointerUp: (_) => setState(() {
//                   //       pausePressed = false;
//                   //     }),
//                   //     onPointerDown: (_) => setState(() {
//                   //       pausePressed = false;
//                   //     }),
//                   //     child: Container(
//                   //       // height: 200,
//                   //       // width: 200,
//                   //       // duration: Duration(milliseconds: 100),
//                   //       decoration: BoxDecoration(
//                   //           color: Darkmode
//                   //               ? Color(0xff1a1a1a)
//                   //               : Color(0xffE7ECEF),
//                   //           borderRadius: BorderRadius.circular(300),
//                   //           boxShadow: [
//                   //             BoxShadow(
//                   //               blurRadius: pausePressed ? 5.0 : 30.0,
//                   //               offset: pausePressed
//                   //                   ? -Offset(6, 8)
//                   //                   : -Offset(10, 10),
//                   //               color: Darkmode
//                   //                   ? Colors.black12
//                   //                   : Colors.white54,
//                   //               inset: pausePressed,
//                   //             ),
//                   //             BoxShadow(
//                   //               blurRadius: pausePressed ? 5.0 : 30.0,
//                   //               offset: pausePressed
//                   //                   ? Offset(6, 8)
//                   //                   : Offset(10, 10),
//                   //               color: Darkmode
//                   //                   ? Color(0xff262626)
//                   //                   : Color(0xffA7A9AF),
//                   //               inset: pausePressed,
//                   //               // inset: true,
//                   //             ),
//                   //           ]),
//                   //       child: CircleAvatar(
//                   //         radius: 50,
//                   //         foregroundColor: Colors.transparent,
//                   //         backgroundColor: Colors.transparent,
//                   //         // height: height * 0.09,
//                   //         // width: width * 0.20,
//                   //         child: Center(
//                   //           child: Text(
//                   //             "Pause",
//                   //             style: TextStyle(
//                   //                 color: Colors.grey.shade400,
//                   //                 fontSize: height * 0.013,
//                   //                 fontWeight: FontWeight.w800,
//                   //                 // fontFamily: "Nexa",
//                   //                 letterSpacing: 1),
//                   //           ),
//                   //         ),
//                   //       ),
//                   //     ),
//                   //   ),
//                   // ),
//                   GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         closePressed = !closePressed;
//                         setState(() {
//                           // print("hey iam working value:$closeValue");
//                           // closeValue = !closeValue;
//                           // http.put(
//                           //   Uri.parse('http://192.168.1.18/sensor/2/'),
//                           //   headers: <String, String>{
//                           //     'Content-Type': 'application/json; charset=UTF-8',
//                           //   },
//                           //   body: jsonEncode(<String, bool>{
//                           //     "Door_Close": true,
//                           //   }),
//                           // );
//                         });
//                       });
//                     },
//                     child: Listener(
//                       onPointerUp: (_) => setState(() {
//                         closePressed = false;
//                       }),
//                       onPointerDown: (_) => setState(() {
//                         closePressed = false;
//                       }),
//                       child: Container(
//                         // height: 200,
//                         // width: 200,
//                         // duration: Duration(milliseconds: 100),
//                         decoration: BoxDecoration(
//                             color: Darkmode
//                                 ? Color(0xff1a1a1a)
//                                 : Color(0xffE7ECEF),
//                             borderRadius: BorderRadius.circular(300),
//                             boxShadow: [
//                               BoxShadow(
//                                 blurRadius: closePressed ? 5.0 : 30.0,
//                                 offset: closePressed
//                                     ? -Offset(6, 8)
//                                     : -Offset(10, 10),
//                                 color: Darkmode
//                                     ? Colors.black12
//                                     : Colors.white54,
//                                 inset: closePressed,
//                               ),
//                               BoxShadow(
//                                 blurRadius: closePressed ? 5.0 : 30.0,
//                                 offset: closePressed
//                                     ? Offset(6, 8)
//                                     : Offset(10, 10),
//                                 color: Darkmode
//                                     ? Color(0xff262626)
//                                     : Color(0xffA7A9AF),
//                                 inset: closePressed,
//                                 // inset: true,
//                               ),
//                             ]),
//                         child: CircleAvatar(
//                           radius: 50,
//                           foregroundColor: Colors.transparent,
//                           backgroundColor: Colors.transparent,
//                           // height: height * 0.09,
//                           // width: width * 0.20,
//                           child: Center(
//                             child: Text(
//                               "Both",
//                               style: TextStyle(
//                                   color: Colors.grey.shade400,
//                                   fontSize: height * 0.018,
//                                   fontWeight: FontWeight.w800,
//                                   // fontFamily: "Nexa",
//                                   letterSpacing: 1),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//       SizedBox(
//         height: height * 0.05,
//       ),
//     ],
//   ),
// ),
