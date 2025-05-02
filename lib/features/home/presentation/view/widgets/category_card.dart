import 'package:flutter/material.dart';
import 'package:news_app/features/home/data/models/category_model.dart';
import 'package:news_app/features/home/presentation/view/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return CategoryView(
                  categoryName: category.categoryName,
                );
              },
            ),
          );
        },
        child: Container(
          height: 85,
          width: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(category.image),
              fit: BoxFit.fill,
            ),
            color: Colors.amberAccent,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: Text(
              category.categoryName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
