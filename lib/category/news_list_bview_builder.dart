// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_prin, prefer_const_literals_to_create_immutables, must_be_immutable, prefer_typing_uninitialized_variables
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/category/news_list_view.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/category/news_service.dart';

class NewsListViewBuilder extends StatefulWidget {
  NewsListViewBuilder({super.key, required this.category});
  final String category;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  bool isLoading = true;
  
  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(articles: snapshot.data!);
          } else if (snapshot.hasError) {
            return Text('There is an error :( .. try again later');
          } else {
            return Center(child: CircularProgressIndicator());
          }
        });
  }
}
