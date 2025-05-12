import 'package:flutter/material.dart';
import 'screens/sign_in_screen.dart'; // Import your login screen

void main() {
  runApp(const ProjectBimbaApp()); // Launch the app
}

// Root widget of your app
class ProjectBimbaApp extends StatelessWidget {
  const ProjectBimbaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ellos duermen', // App title used in task switcher
      debugShowCheckedModeBanner: false, // Removes the debug banner
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white, // App-wide background
        fontFamily: 'Arial', // Optional: set a base font
        useMaterial3: true, // Enables Material 3 styling
      ),
      home: const SignInScreen(), // Sets your first screen
    );
  }
}
