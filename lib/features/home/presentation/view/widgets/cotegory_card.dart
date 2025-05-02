import 'package:flutter/material.dart';

class CotegoryCard extends StatelessWidget {
  const CotegoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      width: 150,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/sports.jpg', ), fit: BoxFit.fill),
        color: Colors.amberAccent,
        borderRadius: BorderRadius.circular(16)),
      child: Center(child: Text('Sports' , style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white),)),
    );
  }
}
