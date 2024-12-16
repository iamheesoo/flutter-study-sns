import 'package:flutter/material.dart';

class PostCard extends StatefulWidget {
  int number;

  PostCard({required this.number});

  @override
  _PostCardState createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            color: Colors.grey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundImage: NetworkImage(
                          "https://picsum/photos/id/${widget.number + 100}/200/300"),
                    ),
                    SizedBox(width: 5,),
                    Text("iamheesoo")
                  ],
                ),
                Icon(Icons.subject)
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 400,
            color: Colors.white,
            child: Image.network(
              "https://picsum.photos/id/${widget.number}/200/300",
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            color: Colors.red,
            child: Center(
              child: Text("아이콘"),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            color: Colors.green,
            child: Center(
              child: Text("좋아요"),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            color: Colors.blue,
            child: Center(
              child: Text("포스트 설명"),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            color: Colors.orange,
            child: Center(
              child: Text("댓글"),
            ),
          )
        ],
      ),
    );
  }
}
