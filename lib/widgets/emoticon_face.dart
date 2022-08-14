// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class EmoticonFace extends StatelessWidget {
  final String emoticonFace;
  final String feelText;

  const EmoticonFace({
    Key? key,
    required this.emoticonFace,
    required this.feelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.blue[600],
            borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.all(16.0),
          child: Center(
            child: Text(
              emoticonFace,
              style: TextStyle(
                fontSize: 28,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          feelText,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
