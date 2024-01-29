import 'package:flutter/material.dart';

class AllRecipe extends StatefulWidget {
  const AllRecipe({super.key});

  @override
  State<AllRecipe> createState() => _AllRecipeState();
}

class _AllRecipeState extends State<AllRecipe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
