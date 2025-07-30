import 'dart:convert';

import 'package:flutter_application_3/modle/news_model.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:http/http.dart' as http;

class NewsController extends GetxController
{
  var articles = <NewsArticle>[].obs;
  var isLoading = false.obs;
  var errorMessage = "".obs;

  final String _apiKey = "93eca693e74f4e668aca032f44be95bd";

  @override
  void onInit() {
    super.onInit();
    fetchNews();
  }

  Future<void> fetchNews() async 
  {
    isLoading.value = true;
    errorMessage.value = "";

    try 
    {
        final response = await http.get
        (
          Uri.parse("https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=$_apiKey"),
        );

        if (response.statusCode == 200)
        {
          final data = json.decode(response.body);
          final List articlesJson = data["articles"];

          articles.value = articlesJson
          .map((article)=> NewsArticle.fromJson(article))
          .toList();

        }
        else
        {
          errorMessage.value = "Failed to load news: ${response.statusCode}";

        }
    }
    catch(e)
    {
        errorMessage.value = 'Error: ${e.toString()}'; 
    }
    finally
    {
      isLoading.value = false;
    }

  }

}