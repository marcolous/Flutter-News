// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print
import 'package:flutter/material.dart';
import 'package:news_app/category/newstile.dart';
import 'package:news_app/models/article_model.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModel> articles;

  NewsListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemCount: articles.length,
      itemBuilder: (context, index) {
        return NewsTile(
          articleModel: articles[index],
        );
      },
    );
  }
}
