import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_study_sns/mainpage.dart';
import 'package:get/get.dart';

class LandingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Get.offAll(MainPage());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Image.asset('assets/image/landing.png', fit: BoxFit.cover),
        ),
        CircularProgressIndicator()
      ],
    ));
  }
}
