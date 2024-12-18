import 'package:flutter/material.dart';
import 'package:flutter_study_sns/landingpage.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: 'NanumGothicCoding'),
      home: LandingPage(),
    );
  }
}
