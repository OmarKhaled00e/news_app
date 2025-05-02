part of 'news_cubit.dart';

@immutable
sealed class NewsState {}

final class NewsInitial extends NewsState {}

final class NewsLoading extends NewsState {}

final class NewsSuccess extends NewsState {
  List<ArticleModel> articles;
  NewsSuccess({required this.articles});
}

final class NewsFailure extends NewsState {
  final String errMassage;
  NewsFailure({required this.errMassage});
}
