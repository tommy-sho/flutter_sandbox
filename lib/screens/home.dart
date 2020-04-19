import 'package:flutter/material.dart';
import 'package:flutter_sandbox/models/post.dart';
import 'package:flutter_sandbox/models/user.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[Column(children: getPosts())],
      ),
    );
  }

  List<Widget> getPosts() {
    List<Widget> posts = [];
    for (Post post in userPosts) {
      posts.add(getPost(post));
    }
    return posts;
  }

  Widget getPost(Post post) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 30),
                      child: CircleAvatar(backgroundColor: Colors.orange),
                    ),
                    Container(
                      child: Text(post.text),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.accessibility),
                    IconButton(
                      icon: Icon(Icons.more_horiz),
                      onPressed: () {},
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.accessibility),
                    IconButton(
                      icon: Icon(Icons.more_horiz),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
