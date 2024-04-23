import 'package:flutter/material.dart';

class CarouselModel {
  String? name;
  String? imagePath;
  Color? boxColor;
  String? rating;
  bool? boxIsSelected;

  CarouselModel({
    required this.name,
    required this.imagePath,
    required this.boxColor,
    required this.rating,
    required this.boxIsSelected,
  });

  static List<CarouselModel> getPopularModel() {
    List<CarouselModel> carsoul = [];

    carsoul.add(CarouselModel(
        name: 'Birthday',
        imagePath: 'asset/images/concert_image.jpg',
        rating: '4.7',
        boxColor: Colors.blue,
        boxIsSelected: true));

    carsoul.add(CarouselModel(
        name: 'Wedding',
        imagePath: 'asset/images/wedding_pic.jpg',
        rating: '4.7',
        boxColor: Colors.lightBlueAccent,
        boxIsSelected: false));

    carsoul.add(CarouselModel(
        name: 'Business party',
        imagePath: 'asset/images/weddings.jpeg',
        rating: '4.7',
        boxColor: Colors.lightBlueAccent,
        boxIsSelected: false));

    return carsoul;
  }
}
