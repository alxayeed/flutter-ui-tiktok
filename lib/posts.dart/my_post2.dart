import 'package:flutter/material.dart';
import 'package:flutter_tiktok/posts.dart/post_template.dart';

class MyPost2 extends StatelessWidget {
  const MyPost2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink[200],
      child: PostTemplate(
        caption: 'Caption 2',
        author: '@alxayeed',
        numberOfLikes: '110',
        numberOfMessage: '11',
        numberOfShare: '48',
      ),
    );
  }
}
