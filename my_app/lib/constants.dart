import 'package:flutter/material.dart';

// ignore: constant_identifier_names
const String google_api_key = "AIzaSyAlEUychknDTtDeXLkxrMHFcqfuseKvdB0";
const Color primaryColor = Color(0xFF3E37B8);
const LinearGradient firstGradient = LinearGradient(colors: [
  Color.fromRGBO(238, 67, 110, 1.0),
  Color.fromRGBO(200, 59, 133, 1.0)
]);

const Color secondaryColor = Color.fromRGBO(171, 62, 140, 1.0);
const Color hoverSecondaryColor = Color.fromRGBO(141, 46, 114, 0.6);
const Color thirdColor = Color.fromRGBO(249, 221, 234, 1.0);
const Color activeText = Color.fromRGBO(255, 15, 107, 1.0);
const double defaultPadding = 16.0;
const LinearGradient baseGradient = LinearGradient(
    colors: [
      Color.fromRGBO(218, 67, 110, 1.0),
      Color.fromRGBO(150, 59, 193, 1.0)
    ],
    begin: FractionalOffset(0.0, 0.0),
    end: FractionalOffset(1.0, 0.0),
    stops: [0.0, 1.0],
    tileMode: TileMode.clamp);
const LinearGradient darkGradient = LinearGradient(
    colors: [
      Color.fromRGBO(73, 25, 63, 1.0),
      Color.fromRGBO(18, 14, 64, 1.0),
      Color.fromRGBO(6, 5, 26, 1.0),
    ],
    begin: FractionalOffset(0.1, 0.5),
    end: FractionalOffset(1.0, 0.2),
    stops: [0, 1, 1],
    tileMode: TileMode.clamp);
