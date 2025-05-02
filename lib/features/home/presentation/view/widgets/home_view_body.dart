import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/features/home/presentation/view/manger/cubit/news_cubit.dart';
import 'package:news_app/features/home/presentation/view/widgets/category_list.dart';
import 'package:news_app/features/home/presentation/view/widgets/news_list.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
    void initState() {
    super.initState();
    BlocProvider.of<NewsCubit>(context).getNews();
  }
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
        NewsList(categoryName: 'general',)

        ],
      )
    );
  }
}
