import 'dart:math';
import 'package:flutter/material.dart';

/// This class holds the application's state
class ColorModel extends ChangeNotifier {
  Color _currentColor = Colors.white;

  /// This getter returns the current color
  Color get currentColor => _currentColor;

  /// This method generates a random color and sets it as the current color
  void generateRandomColor() {
    final random = Random();
    final color = Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
    _currentColor = color;
    notifyListeners(); // Notify listeners that the state has changed
  }
}
