import 'dart:developer';
import 'package:newsapp_spiderworks/repository/helper/api_helper.dart';

class NewsDetailsService {
  static Future<dynamic> fetchData(slug) async {
    try {
      var decodedData = ApiHelper.getData(endPoint: "blogs/$slug");
      return decodedData;
    } catch (e) {
      log("$e");
    }
  }
}
