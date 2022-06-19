import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  IconData icon;
  String number;
  MyButton({Key? key, required this.icon, required this.number})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        children: [
          Icon(
            icon,
            size: 40.0,
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text("$number")
        ],
      ),
    );
  }
}
