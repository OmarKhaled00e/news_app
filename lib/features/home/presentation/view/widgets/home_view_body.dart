import 'package:flutter/material.dart';
import 'package:news_app/features/home/presentation/view/widgets/category_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CategoryList(),
    ]);
  }
}
