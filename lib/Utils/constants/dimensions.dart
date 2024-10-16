import 'package:flutter/material.dart';

class Dimensions {
  static double myWidthThis(BuildContext context) {
    return MediaQuery.of(context).size.width / 393;
  }

  static double myHeightThis(BuildContext context) {
    return MediaQuery.of(context).size.height / 852;
  }

  static double myHeightFThis(BuildContext context) {
    return (MediaQuery.of(context).size.height -
            MediaQuery.of(context).padding.bottom -
            MediaQuery.of(context).padding.top) /
        852;
  }
}

