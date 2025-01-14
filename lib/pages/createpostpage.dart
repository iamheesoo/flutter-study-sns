import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CreatePostPage extends StatefulWidget {
  @override
  _CreatePostPage createState() => _CreatePostPage();
}

class _CreatePostPage extends State<CreatePostPage> {
  FirebaseFirestore fireStore = FirebaseFirestore.instance;

  TextEditingController titleController = TextEditingController();
  TextEditingController contentController = TextEditingController();
  String postTitle = '';
  String content = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('포스트 업로드 테스트')),
      body: Container(
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: '포스팅 제목'),
              onChanged: (value) {
                setState(() {
                  postTitle = value;
                });
              },
            ),
            TextField(
              controller: contentController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: '내용',
              ),
              maxLines: 10,
              onChanged: (value) {
                setState(() {
                  content = value;
                });
              },
            ),
            ElevatedButton(
                onPressed: () {
                  String postKey = getRandomString(16);
                  fireStore.collection('Posts').doc(postKey).set({
                    "key": postKey,
                    "title": postTitle,
                    "explain": content,
                    "firstPicUrl": "",
                    "firstPicWidth": 0,
                    "firstPicHeight": 0,
                    "authorName": "myAuthor",
                    "like": 0
                  });
                },
                child: Text('업로드 하기'))
          ],
        ),
      ),
    );
  }

  String getRandomString(int length) {
    String chars =
        'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
    Random random = Random();
    return String.fromCharCodes(Iterable.generate(
        length, (_) => chars.codeUnitAt(random.nextInt(chars.length))));
  }
}
