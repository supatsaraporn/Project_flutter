import 'package:flutter/material.dart';

class RecipePage extends StatefulWidget {
  @override
  _RecipePageState createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Recipe"),
      ),
      body: new Center(
        child: new Text("Page 1"),
      ),
    );
  }
}
