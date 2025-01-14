import 'package:flutter/material.dart';
import 'package:flutter_study_sns/cards/postcard.dart';
import 'package:get/get.dart';

import '../pages/createpostpage.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          child: ListView.separated(
            itemCount: 30,
            itemBuilder: (BuildContext context, int index) {
              return PostCard(number: index);
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(height: 10,);
            },
          ),
        ),
        GestureDetector(
          onTap: () {
            Get.to(CreatePostPage());
          },
          child: Container(
            margin: EdgeInsets.all(15),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1000),
                color: Colors.orange
            ),
            child: Icon(Icons.add),
          ),
        )

      ],
    )
      ;
  }
}
