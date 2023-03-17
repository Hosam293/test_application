import 'package:flutter/material.dart';
import 'package:test_application/model/color_model.dart';

/// This class contains the business logic for the application

class Controller {
  /// Create an instance of the model
  final ColorModel model = ColorModel();



  /// This getter returns the current color from the model
  Color get currentColor => model.currentColor;

  /// This method generates a random color by calling the corresponding method
  void generateRandomColor() {
    model.generateRandomColor();
  }
}
