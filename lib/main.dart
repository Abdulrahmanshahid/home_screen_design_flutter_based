import 'package:flutter/material.dart';
import 'package:training/pages/home.dart';

void main() {
  runApp(const MyApp()); // Removed 'const' keyword
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Removed 'const' keyword

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      home: HomeScreen(),
    );
  }
}
