import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'makepostpage.dart';

class TestPage extends StatefulWidget {
  @override
  _TestPage createState() => _TestPage();
}

class _TestPage extends State<TestPage> {
  FirebaseFirestore fireStore = FirebaseFirestore.instance;
  var name = "??";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("테스트 페이지"),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Text(name),
              ElevatedButton(
                  onPressed: () async {
                    var test1docData = await fireStore
                        .collection('Test')
                        .doc('test1doc')
                        .get();
                    setState(() {
                      name = test1docData['name'];
                    });
                  },
                  child: Text("데이터 불러오기")),
              ElevatedButton(onPressed: () {
                Get.to(MakePostPage());
              }, child: Text("포스팅올리기 페이지로"))
            ],
          ),
        ),
      ),
    );
  }
}
