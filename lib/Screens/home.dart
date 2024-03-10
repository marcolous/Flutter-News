// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_prin, prefer_const_literals_to_create_immutables, must_be_immutable
import 'package:flutter/material.dart';
import 'package:news_app/category/card.dart';
import 'package:news_app/category/news_list_bview_builder.dart';

class Home extends StatelessWidget {
  Home({super.key});
  List<Cards> card = [
    Cards(image: 'assets/business.jpg', title: 'Business', category: 'business'),
    Cards(image: 'assets/Entertaiment.jpg', title: 'Entertainment', category: 'entertainment'),
    Cards(image: 'assets/general.avif', title: 'General', category: 'general'),
    Cards(image: 'assets/health.png', title: 'Health', category: 'health'),
    Cards(image: 'assets/science.avif', title: 'Science', category: 'science'),
    Cards(image: 'assets/sports.png', title: 'Sports', category: 'sports'),
    Cards(image: 'assets/technology.png', title: 'Technology', category: 'technology'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: //NewsListView()
        ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'News',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    'Cloud',
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: card.length,
                itemBuilder: (BuildContext context, int index) {
                  return card[index];
                },
              ),
            ),
            NewsListViewBuilder(category: 'general',),
            
          ],
        ),
      ),
    );
  }
}


