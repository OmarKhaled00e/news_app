import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:news_app/core/utils/api_service.dart';
import 'package:news_app/features/home/data/models/article_model.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsInitial());

  getNews() async {
    emit(NewsLoading());
    try {
      ApiService apiService = ApiService(dio: Dio());
      List<ArticleModel> articles = await apiService.getNews(category: 'general');
      emit(NewsSuccess(articles: articles));
    } catch (e) {
      emit(NewsFailure(errMassage: e.toString()));
    }
  }
}

