import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget searchField() {
  return Container(
    margin: EdgeInsets.only(top: 20, left: 10, right: 20),
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xff1D1617).withOpacity(0.11),
          blurRadius: 40,
          spreadRadius: 0.0,
        ),
      ],
    ),
    child: Row(
      children: [
        IconButton(
          icon: Icon(Icons.location_on, size: 24), // Adjust icon size here
          onPressed: () {
            // Add onPressed logic for location icon
          },
        ),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.all(15),
              hintText: 'Search here',
              hintStyle: TextStyle(
                color: Color(0xffDDDADA),
                fontSize: 14,
              ),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(12),
                child: SvgPicture.asset(
                  "asset/icons/Search.svg",
                ),
              ),
              suffixIcon: IconButton(
                icon: SvgPicture.asset(
                  "asset/icons/Filter.svg",
                ),
                onPressed: () {
                  // Add onPressed logic for filter icon
                },
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
