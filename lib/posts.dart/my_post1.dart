import 'package:flutter/material.dart';
import 'package:flutter_tiktok/posts.dart/post_template.dart';

class MyPost1 extends StatelessWidget {
  const MyPost1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: PostTemplate(
        caption: 'Caption 1 ',
        author: '@alxayeed',
        numberOfLikes: '150',
        numberOfMessage: '3',
        numberOfShare: '8',
      ),
    );
  }
}
