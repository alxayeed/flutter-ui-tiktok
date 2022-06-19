import 'package:flutter/material.dart';

class ProfileTab extends StatelessWidget {
  Color color;
  int items;
  ProfileTab({Key? key, required this.color, required this.items})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: items,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              color: color,
            ),
          );
        });
  }
}
