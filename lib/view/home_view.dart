import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_application/model/color_model.dart';


// This widget displays the home screen

/// This widget displays the home screen
class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Wrap the widget with the Consumer  to listen to changes in the provider
    return Consumer<ColorModel>(
      builder: (context, model, child) {
        // Get an instance of the controller using the Provider package
        final controller = Provider.of<ColorModel>(context);

        return GestureDetector(
          onTap: () {
            // When the user taps on the screen, generate a random color
            controller.generateRandomColor();
          },
          child: Scaffold(
            body: const Center(
              child: Text(
                'Hello there',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            backgroundColor: model
                .currentColor,
            // Set the background color based on the current color in the model
          ),
        );
      },
    );
  }
}
