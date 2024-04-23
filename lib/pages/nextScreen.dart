import 'package:flutter/material.dart';

class NextScreen extends StatelessWidget {
  final dynamic model;

  const NextScreen(this.model, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Use model data to render the screen
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: Center(
        child: Text(model.name), // Example usage of model
      ),
    );
  }
}
