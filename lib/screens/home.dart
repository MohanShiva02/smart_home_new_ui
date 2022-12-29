import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xff262A2E),
      appBar: AppBar(
        title: Text(
          'Onwords Smart Home',
          style: TextStyle(
              fontSize: height * 0.035,
              color: const Color(0xffEBF4FA),
              // fontWeight: FontWeight.bold,
              fontFamily: 'PoppinsBold'),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: height * 0.0, horizontal: width * 0.03),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 0),
                child: RichText(
                  text: TextSpan(
                    text: 'Hello\n',
                    style: TextStyle(
                        fontSize: height * 0.015,
                        color: const Color(0xffEBF4FA),
                        fontWeight: FontWeight.bold,
                        fontFamily: 'PoppinsMedium'),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'User Name!',
                          style: TextStyle(
                              fontSize: height * 0.025,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: height*0.01),
                color: Colors.transparent,
                height: height * 0.86,
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      buildContainers(
                        height,
                        width,
                        ('Admin Room'),
                        const NetworkImage(
                            'https://greenbubbles.in/wp-content/uploads/2019/02/1-700x441-min.jpeg'),
                      ),
                      buildContainers(
                        height,
                        width,
                        ('Hall'),
                        const NetworkImage(
                            'https://img.freepik.com/free-photo/living-room-with-yellow-armchair-empty-dark-blue-wall-background-3d-rendering_41470-3901.jpg?w=1380&t=st=1670068091~exp=1670068691~hmac=5704d4e899c049cc5287a332399a99f1e3c634dcd6211479adcf1a98446592e1'),
                      ),
                      buildContainers(
                        height,
                        width,
                        ('Bed Room'),
                        const NetworkImage(
                            'https://img.freepik.com/premium-photo/bed-with-sheets-bedroom-interior-concrete-wall-modern-furniture_41470-684.jpg?w=996'),
                      ),
                      buildContainers(
                        height,
                        width,
                        ('Kitchen'),
                        const NetworkImage(
                            'https://img.freepik.com/premium-photo/3d-rendering-black-modern-luxury-kitchen_105762-775.jpg?w=996'),
                      ),Padding(padding: EdgeInsets.only(top: height * 0.1))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding buildContainers(
      double height, double width, String name, NetworkImage image) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: height * 0.02),
      child: Neumorphic(
        style: NeumorphicStyle(
          depth: -3,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
          // shadowDarkColorEmboss: Colors.white38,
          shadowLightColorEmboss: Colors.black,
          color: const Color(0xff282C31),
        ),
        child: Container(
            height: height * 0.20,
            width: width * 0.95,
            // color: Colors.transparent,
            decoration: BoxDecoration(
                image: DecorationImage(image: image, fit: BoxFit.cover)),
            child: Container(
              width: width * 0.95,
              height: height * 0.20,
              decoration: BoxDecoration(
                  //     gradient: LinearGradient(
                  //   colors: [
                  //     const Color(0xff659CFB).withOpacity(0.9),
                  //     Colors.transparent
                  //   ],
                  // ),
                  ),
              child: Padding(
                padding:
                    EdgeInsets.only(top: height * 0.15, left: width * 0.05),
                child: Text(
                  name,
                  style: TextStyle(
                      fontSize: height * 0.03,
                      color: Color(0xffEBF4FA),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'PoppinsBold'),
                ),
              ),
            )),
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..lineTo(0, size.height) // Add line p1p2
      ..lineTo(size.width, size.height) // Add line p2p3
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
