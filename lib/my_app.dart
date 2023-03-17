import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_application/controller/controller.dart';
import 'package:test_application/model/color_model.dart';
import 'package:test_application/view/home_view.dart';

void main() {
  runApp(MyApp());
}
/// This class contains the Starting for the application

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // Wrap the entire application with the Provider  to enable state management
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ColorModel()),
        // Provide an instance of the model
        Provider(create: (context) => Controller()),
        // Provide an instance of the controller
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Color App',
        home: HomeView(), // Show the home screen
      ),
    );
  }
}
