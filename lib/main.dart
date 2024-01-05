// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, unused_import, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: Scaffold(
        backgroundColor: Color(0xFFF5F5F3),
        body: Center(
          child: Container(
            width: 200,
            height: 268,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: Offset(0, 3))
                ]),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/burger.png",
                      height: 150,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "برجر",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  RatingBar.builder(
                      initialRating: 5,
                      minRating: 1,
                      direction: Axis.horizontal,
                      itemCount: 5,
                      itemSize: 16,
                      itemPadding: EdgeInsets.symmetric(horizontal: 5),
                      itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.red,
                          ),
                      onRatingUpdate: (index) {}),
                  SizedBox(
                    height: 7,
                  ),
                  Row(
                    children: [
                      Text(
                        "\$10",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.red,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
