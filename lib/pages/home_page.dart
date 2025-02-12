// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:medicalappui/utli/catergory_card.dart';
import 'package:medicalappui/utli/doctor_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            // app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //name
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello,',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'John Ketiku',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      )
                    ],
                  ),

                  // pp pic
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(Icons.person),
                  ),
                ],
              ),
            ),

            SizedBox(height: 25),

            // how u feeling card
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(children: [
                  // animation or cute picture
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.deepPurple[200],
                  ),
                  SizedBox(
                    width: 20,
                  ),
              
                  // how do you feel + get started button
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'How do you feel?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 12),
                        Text(
                          'Fill out your medical card right now',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 12),
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.deepPurple[300],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              'Get Started',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ]),
              ),
            ),

            SizedBox(height: 25),

            // search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.deepPurple[100],
                  borderRadius: BorderRadius.circular(12),
                  ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    hintText: 'How can we help you?',
                  ),
                ),
              ),
            ),

            SizedBox(height: 25),
            
            // horizon list view
            Container(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CatergoryCard(
                    categoryName: 'Dentist',
                    iconImagePath: 'lib/icons/tooth.png',
                  ),
                  CatergoryCard(
                    categoryName: 'Surgeon',
                    iconImagePath: 'lib/icons/surgeon.png',
                  ),
                  CatergoryCard(
                    categoryName: 'Pharmacist',
                    iconImagePath: 'lib/icons/pills.png',
                  ),
                ],
              ),
            ),
          
            SizedBox(height: 25),

            //doctor list 
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Doctor list',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            Container(
              height: 260,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  DoctorCard(
                    doctorImagePath: 'lib/images/doc1.jpg',
                    doctorName: 'Dr. Joe Star',
                    doctorProfession: 'Neurosurgeon',
                    rating: '4.9',
                  ),
                  DoctorCard(
                    doctorImagePath: 'lib/images/doc2.jpg',
                    doctorName: 'Dr. Pablo Escabar',
                    doctorProfession: 'Psychologist',
                    rating: '4.3',
                  ),
                  DoctorCard(
                    doctorImagePath: 'lib/images/doc3.jpg',
                    doctorName: 'Dr. Sanji Gupta',
                    doctorProfession: 'Therapist',
                    rating: '5.0',
                  ),
                  
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}
