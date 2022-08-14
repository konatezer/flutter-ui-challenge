// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class ExrciceTile extends StatelessWidget {
  final icon;
  final color;
  final String exerciseName;
  final int numberOfExrises;
  const ExrciceTile(
      {Key? key,
      this.icon,
      this.color,
      required this.exerciseName,
      required this.numberOfExrises})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: color,
                ),
                padding: EdgeInsets.all(10),
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    exerciseName,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    numberOfExrises.toString() + " Exercices",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Icon(Icons.more_horiz),
        ],
      ),
    );
  }
}
