import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PostCard extends StatefulWidget {
  int number;

  PostCard({required this.number});

  @override
  _PostCardState createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  int pageSize = 3;
  int currentPageIndex = 0;
  PageController _controller = PageController();

  @override
  void initState() {
    super.initState();
  }

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
          AspectRatio(
            aspectRatio: 0.8,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                PageView.builder(
                    controller: _controller,
                    itemCount: pageSize,
                    onPageChanged: (value) {
                      setState(() {
                        currentPageIndex = value;
                      });
                    },
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        height: 400,
                        color: Colors.white,
                        child: Image.network(
                          "https://picsum.photos/id/${index + 300}/200/300",
                          fit: BoxFit.fitWidth,
                        ),
                      );
                    }),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 5,
                  ),
                  margin: EdgeInsets.all(10),
                  child: Text("${currentPageIndex+1} / $pageSize"),
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(500)),
                )
              ],
            ),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Row(
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
                  Icon(Icons.bookmark_border_outlined)
                ],
              ),
              SmoothPageIndicator(controller: _controller, count: pageSize),
            ],
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
