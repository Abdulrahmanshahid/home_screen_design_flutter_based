import 'package:flutter/material.dart';

import '../model/popular_model.dart';
import '../pages/nextScreen.dart';

class PopularCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<CarouselModel> carsoul = CarouselModel.getPopularModel();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: Text(
            'Popular',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
        ),
        SizedBox(height: 15),
        Container(
          height: 200,
          child: ListView.separated(
            itemBuilder: (context, index) {
              return _buildRecommendationItem(context, carsoul[index]);
            },
            separatorBuilder: (context, index) => SizedBox(
              width: 25,
              height: 15,
            ),
            itemCount: carsoul.length,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20, right: 20),
          ),
        )
      ],
    );
  }

  Widget _buildRecommendationItem(BuildContext context, CarouselModel model) {
    return GestureDetector(
      onTap: () {
        // Navigate to new page when card is clicked
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NextScreen(model),
          ),
        );
      },
      child: Container(
        width: 210,
        decoration: BoxDecoration(
          color: model.boxColor?.withOpacity(0.3),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                model.imagePath!,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      model.boxIsSelected!
                          ? Color(0xff9DCEFF)
                          : Colors.transparent,
                      model.boxIsSelected!
                          ? Color(0xff92a3fd)
                          : Colors.transparent,
                    ],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      model.name!,
                      style: TextStyle(
                        color:
                            model.boxIsSelected! ? Colors.black : Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 5), // Adjust as needed for spacing
                    Text(
                      'Rating: ${model.rating!}',
                      style: TextStyle(
                        color:
                            model.boxIsSelected! ? Colors.black : Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
