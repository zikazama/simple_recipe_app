import 'package:flutter/material.dart';

class DetailRecipePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Mendapatkan argument yang dikirim dari Onboarding Page
    final Map arguments = ModalRoute.of(context)!.settings.arguments as Map;
    final String recipeTitle = arguments['recipeTitle'];
    final String recipeDetails = arguments['recipeDetails'];

    return Scaffold(
      appBar: AppBar(title: Text(recipeTitle)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(recipeTitle, style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            Text(recipeDetails),
          ],
        ),
      ),
    );
  }
}
