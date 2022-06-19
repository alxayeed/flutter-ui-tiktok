import 'package:flutter/material.dart';
import 'package:flutter_tiktok/posts.dart/post_template.dart';

class MyPost3 extends StatelessWidget {
  const MyPost3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
      child: PostTemplate(
        caption: 'Caption 3',
        author: '@alxayeed',
        numberOfLikes: '870',
        numberOfMessage: '32',
        numberOfShare: '110',
      ),
    );
  }
}
