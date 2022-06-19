import 'package:flutter/material.dart';
import 'package:flutter_tiktok/utils/button.dart';

class PostTemplate extends StatelessWidget {
  String author;
  String caption;
  String numberOfLikes;
  String numberOfMessage;
  String numberOfShare;
  PostTemplate(
      {Key? key,
      required this.author,
      required this.caption,
      required this.numberOfLikes,
      required this.numberOfMessage,
      required this.numberOfShare})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
      children: [
        // post (at the back)

        // author and caption
        Padding(
          padding: const EdgeInsets.only(left: 12.0, bottom: 28.0),
          child: Container(
            alignment: Alignment.bottomLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  author,
                  style: const TextStyle(
                      fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(text: caption),
                  const TextSpan(
                      text: "#flutter #tiktok",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ]))
              ],
            ),
          ),
        ),

        // buttons
        Container(
          alignment: const Alignment(1, 1),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(icon: Icons.favorite, number: numberOfLikes),
                MyButton(
                    icon: Icons.chat_bubble_outline, number: numberOfMessage),
                MyButton(icon: Icons.send, number: numberOfShare),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
