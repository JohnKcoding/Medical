// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {

  final String doctorImagePath;
  final String rating;
  final String doctorName;
  final String doctorProfession;

  DoctorCard({
    required this.doctorImagePath, 
    required this.rating, 
    required this.doctorName, 
    required this.doctorProfession,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.deepPurple[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            // doc pic
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                doctorImagePath,
                height:  100,
              ),
            ),
            SizedBox(
              height: 10,
            ),
      
            // rating / 5
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow[500],
                ),
                Text(
                  rating,
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),

            SizedBox(
              height: 10,
            ),

            // doc Name
            Text(
              doctorName,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            SizedBox(
              height: 10,
            ),
      
            // Title o Doc
            Text(doctorProfession + ' 7 y.e.'),
          ],
        ),
      ),
    );
  }
}