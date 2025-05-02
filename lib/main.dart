import 'package:flutter/material.dart';
import 'package:news_app/features/home/presentation/view/home_view.dart';

void main() {
  runApp(const News());
}
class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}