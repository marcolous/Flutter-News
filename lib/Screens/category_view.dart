import 'package:flutter/material.dart';
import 'package:news_app/category/news_list_bview_builder.dart';

class CategotyView extends StatelessWidget {
  const CategotyView({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: NewsListViewBuilder(
        category: category,
      ),
    );
  }
}
