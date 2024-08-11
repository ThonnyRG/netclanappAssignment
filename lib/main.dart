import 'package:flutter/material.dart';
import 'package:netclanapp/Screens/explore.dart'; // Importing the Explore screen from the Screens folder.

void main() {
  runApp(const MyApp()); // The entry point of the Flutter app, calling the MyApp widget.
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Constructor for the MyApp widget, making it constant.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Netclan Explorer', // Title of the app.
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade900), // Setting the color scheme with a seed color.
        useMaterial3: true, // Enabling Material 3 design.
      ),
      home: const MyHomePage(), // The default screen (home) of the app is set to MyHomePage.
    );
  }
}