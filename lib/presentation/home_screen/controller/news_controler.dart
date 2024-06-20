import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:newsapp_spiderworks/repository/api/home_screen/model/news_model.dart';
import 'package:newsapp_spiderworks/repository/api/home_screen/service/news_service.dart';
class NewsController extends ChangeNotifier {
  bool isLoading = false;
  NewsModel newsModel = NewsModel();

  fetchData() async {
    isLoading = true;
    notifyListeners();
    log("NewsController -> fetchData()");
    NewsService.fetchNews().then((value) {
      if(value["status"]==1){
        newsModel = NewsModel.fromJson(value);
        isLoading=false;
      }else{
        log("error");
      }
      notifyListeners();
    });
  }
}