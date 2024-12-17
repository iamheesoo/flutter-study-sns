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
            padding: EdgeInsets.all(10),
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
                    SizedBox(width: 10,),
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
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.favorite_border_rounded),
                    SizedBox(width: 10),
                    Icon(Icons.comment_outlined),
                    SizedBox(width: 10),
                    Icon(Icons.send_rounded),
                  ],
                ),
                Text("indicator"),
                Icon(Icons.bookmark_border_outlined)
              ],
            ) 
            
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            padding: EdgeInsets.all(10),
            alignment: Alignment.centerLeft,
            child: Text("좋아요 ${widget.number}개"),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            padding: EdgeInsets.all(10),
            alignment: Alignment.centerLeft,
            child: Text("포스트 설명"),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            padding: EdgeInsets.all(10),
            alignment: Alignment.centerLeft,
            child: Text("댓글"),
          ),
        ],
      ),
    );
  }
}
