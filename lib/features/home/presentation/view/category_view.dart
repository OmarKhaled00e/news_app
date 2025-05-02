import 'package:flutter/material.dart';
import 'package:news_app/features/home/presentation/view/widgets/news_list.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.categoryName});
  final String categoryName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          NewsList(categoryName: categoryName,)
        ],
      ),
    );
  }
}