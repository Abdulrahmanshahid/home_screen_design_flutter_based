import 'package:flutter/material.dart';
import 'package:training/pages/nextScreen.dart';

import '../model/recommended_model.dart';

class RecommendationField extends StatefulWidget {
  @override
  _RecommendationFieldState createState() => _RecommendationFieldState();
}

class _RecommendationFieldState extends State<RecommendationField> {
  late List<RecommendedModel> recommends;

  @override
  void initState() {
    super.initState();
    _getRecommendations();
  }

  void _getRecommendations() {
    setState(() {
      recommends = RecommendedModel.getRecommendations();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: Text(
            'Recommendations',
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
              return GestureDetector(
                onTap: () {
                  // Navigate to detailed page when tapped
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NextScreen(recommends[index]),
                    ),
                  );
                },
                child: Container(
                  width: 210,
                  decoration: BoxDecoration(
                    color: recommends[index].boxColor?.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        recommends[index].name!,
                        style: TextStyle(
                          color: recommends[index].viewIsSelected!
                              ? Colors.black
                              : Color(0xffC58BF2),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 150, // Adjust width as needed
                        height: 150, // Adjust height as needed
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(recommends[index].imagePath!),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Location: ${recommends[index].location!}',
                        style: TextStyle(
                          color: Color(0xff786F72),
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) => SizedBox(
              width: 25,
              height: 15,
            ),
            itemCount: recommends.length,
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.only(left: 20, right: 20),
          ),
        ),
      ],
    );
  }
}
