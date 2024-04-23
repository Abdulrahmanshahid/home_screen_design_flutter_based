import 'package:flutter/material.dart';

class RecommendedModel {
  String? name;
  String? imagePath;
  String? location;
  bool? viewIsSelected;
  Color? boxColor; // Change the type to Color?

  RecommendedModel({
    required this.name,
    required this.imagePath,
    required this.location,
    required this.viewIsSelected,
    this.boxColor, // Update the constructor parameter type
  });

  static List<RecommendedModel> getRecommendations() {
    List<RecommendedModel> recommends = [];

    recommends.add(
      RecommendedModel(
        name: 'Birthday',
        imagePath: 'asset/images/weddings.jpeg',
        location: 'Lahore',
        viewIsSelected: true,
        boxColor: Colors.blueAccent,
      ),
    );

    recommends.add(
      RecommendedModel(
        name: 'Wedding',
        imagePath: 'asset/images/wedding_pic.jpg',
        location: 'Lahore',
        viewIsSelected: false,
        boxColor: Colors.lightBlueAccent,
      ),
    );

    recommends.add(
      RecommendedModel(
        name: 'Business Party',
        imagePath: 'asset/images/concert_image.jpg',
        location: 'Lahore',
        viewIsSelected: false,
        boxColor: Colors.lightBlueAccent,
      ),
    );

    return recommends;
  }
}
