import 'package:flutter/material.dart';
import 'package:simple_recipe_app/DetailRecipePage.dart';
import 'package:simple_recipe_app/LoginPage.dart';
import 'package:simple_recipe_app/OnboardingPage.dart';
import 'package:simple_recipe_app/SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      routes: {
        '/login': (context) => LoginPage(),
        '/onboarding': (context) => OnboardingPage(),
        '/detailRecipe': (context) => DetailRecipePage(),
      },
    );
  }
}
