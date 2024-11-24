import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Onboarding')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to Recipe App! Explore new recipes.',
                style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/detailRecipe', arguments: {
                  'recipeTitle': 'Spaghetti Carbonara',
                  'recipeDetails': 'A classic Italian pasta dish.'
                });
              },
              child: Text('Go to Recipe'),
            ),
          ],
        ),
      ),
    );
  }
}
