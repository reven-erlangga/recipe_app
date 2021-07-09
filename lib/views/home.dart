import 'package:flutter/material.dart';
import 'package:recipe_app/views/widgets/recipe_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.restaurant_menu),
              SizedBox(
                width: 10,
              ),
              Text('Food Recipe')
            ],
          ),
        ),
        body: RecipeCard(
            title: 'Test',
            cookTime: '30 min',
            rating: '4.3',
            thumbnailUrl:
                'https://www.foodiesfeed.com/wp-content/uploads/2021/02/yogurt-with-fresh-mint-in-an-iranian-restaurant-1024x683.jpg'));
  }
}
