import 'package:flutter/material.dart';
import 'package:news_app/features/home/presentation/view/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('News',
            style: TextStyle(color: Colors.black),),
            Text('Cloud', 
            style: TextStyle(color: Colors.orange),)
          ],
        ),
      ),
      body:HomeViewBody() ,
    );
  }
}