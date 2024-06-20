import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:newsapp_spiderworks/repository/api/news_details_screen/model/news_details_model.dart';
import 'package:newsapp_spiderworks/repository/api/news_details_screen/service/news_details_service.dart';

class NewsDetailsController extends ChangeNotifier {
  bool isLoading = false;
  NewsDetailsModel newsDetailsModel = NewsDetailsModel();

  fetchData(slug) {
    isLoading = true;
    notifyListeners();
    NewsDetailsService.fetchData(slug).then((value) {
      if (value["status"] == 1) {
        newsDetailsModel = NewsDetailsModel.fromJson(value);
        isLoading = false;
      } else {
        log("Api failed");
      }
      notifyListeners();
    });
  }
}
