import 'package:flutter/cupertino.dart';

class Post {
  String key;
  String? title;
  String? explain;
  String? firstPicUrl;
  String? firstPicWidth;
  String? firstPicHeight;
  String? authorName;
  int? like;

  Post({
    required this.key,
    this.title,
    this.explain,
    this.firstPicUrl,
    this.firstPicWidth,
    this.firstPicHeight,
    this.authorName,
    this.like
});
}