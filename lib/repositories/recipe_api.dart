import 'dart:convert';
import 'package:recipe_app/models/recipe.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

class RecipeApi {
  static Future<List<Recipe>> getRecipe() async {
    var uri = Uri.https("yummly2.p.rapidapi.com", "/feeds/list",
        {"start": "0", "limit": "18", "tag": "list.recipe.popular"});

    var apiKey = env['RAPID_API_KEY'];
    var host = env['RAPID_API_HOST'];

    final response = await http.get(uri, headers: {
      "x-rapidapi-key": "$apiKey",
      "x-rapidapi-host": "$host",
      "useQueryString": "true"
    });

    Map data = jsonDecode(response.body);

    List _temp = [];

    for (var i in data['feed']) {
      _temp.add(i['content']['details']);
    }

    return Recipe.recipesFromSnapshot(_temp);
  }
}
