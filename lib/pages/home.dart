import 'package:flutter/material.dart';

import '../common/appbar.dart';
import '../common/carousel.dart';
import '../common/category.dart';
import '../common/recommendation.dart';
import '../common/searchbar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //app bar
      appBar: buildAppBar(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //search field
            searchField(),

            //category section
            categorySection(),

            //popular section
            PopularCarousel(),

            //recommended section
            RecommendationField(),
          ],
        ),
      ),
    );
  }
}
