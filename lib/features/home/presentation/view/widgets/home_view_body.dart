import 'package:flutter/material.dart';
import 'package:news_app/features/home/presentation/view/widgets/category_list.dart';
import 'package:news_app/features/home/presentation/view/widgets/news_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
        SliverToBoxAdapter(
        child: CategoryList(),
        ),
        SliverToBoxAdapter(child: SizedBox(
          height: 32,
        ),),
        NewsList()

        ],
      )
    );
  }
}
