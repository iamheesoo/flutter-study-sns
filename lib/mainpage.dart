import 'package:flutter/material.dart';
import 'package:flutter_study_sns/mainpages/homescreen.dart';
import 'package:flutter_study_sns/mainpages/mylikescreen.dart';
import 'package:flutter_study_sns/mainpages/myscreen.dart';
import 'package:flutter_study_sns/mainpages/showgridscreen.dart';
import 'package:flutter_study_sns/testpage.dart';
import 'package:get/get.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: "1번"),
    BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: "2번"),
    BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "3번"),
    BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "4번"),
  ];
  List pages = [HomeScreen(), ShowGridScreen(), MyLikeScreen(), MyScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onTap: () {
            Get.to(TestPage());
          },
          child: Text(
            "MainPage",
            style: TextStyle(fontFamily: 'NanumGothicCoding'),
          ),
        )

        ,
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.withOpacity(.60),
        selectedFontSize: 14,
        unselectedFontSize: 10,
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: bottomItems,
      ),
      body: pages[_selectedIndex],
    );
  }
}
