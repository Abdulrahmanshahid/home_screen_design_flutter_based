import 'package:flutter/material.dart';

AppBar buildAppBar() => AppBar(
      title: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Event ',
              style: TextStyle(
                  color: Colors.purple,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: 'Hub',
              style: TextStyle(
                  color: Colors.amber,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0.0,
      centerTitle: false, // Aligns the title to the left
      // Remove the leading widget
      actions: [
        GestureDetector(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            width: 37,
            child: IconButton(
              icon: Icon(
                Icons.notifications,
                size: 24,
                color: Colors.black,
              ),
              onPressed: () {
                // Add onPressed logic for notifications icon
              },
            ),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
          ),
        ),
      ],
    );
