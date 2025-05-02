import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/utils/widgets/custom_loading_indicator.dart';
import 'package:news_app/features/home/presentation/view/manger/cubit/news_cubit.dart';
import 'package:news_app/features/home/presentation/view/widgets/news_tile.dart';

class NewsList extends StatelessWidget {
  const NewsList({super.key, required this.categoryName});
  final String categoryName;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsCubit, NewsState>(
      builder: (context, state) {
        if (state is NewsLoading) {
          return SliverToBoxAdapter(child: CustomLoadingIndicator());
        } else if (state is NewsSuccess) {
          final article = state.articles;
          return SliverList(
            delegate: SliverChildBuilderDelegate(childCount: article.length, (
              context,
              index,
            ) {
              return NewsTile(article: article[index]);
            }),
          );
        } else if (state is NewsFailure) {
          return SliverToBoxAdapter(
            child: Center(child: Text(state.errMassage)),
          );
        } else {
          // حالة افتراضية في حال ظهرت حالة غير متوقعة
          return SliverToBoxAdapter(
            child: Center(child: Text('Unexpected state')),
          );
        }
      },
    );
  }
}
