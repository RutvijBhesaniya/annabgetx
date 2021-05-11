
import 'package:annabellegetx/common/api_constant.dart';
import 'package:annabellegetx/models/response/category_response.dart';
import 'package:annabellegetx/models/response/dashboard_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class RemoteServices {
  static fetchCategoryData() async {
    var base_url_category = APIConstants.BASE_URL_WITH_VERSION + APIConstants.CATEGORY;
    var response = await Dio().get("${base_url_category}");
    if(response.statusCode == 200) {
      List<CategoryResponse> list = (response.data as List)
          .map((x) => CategoryResponse.fromJson(x))
          .toList();
      return list;
      /* for(var item in response.data){
          list.add(CategoryRespzonse.fromJson(item));
        }*/
    }
  }

  static fetchDashboardData() async {
    var base_url_dashboard = APIConstants.BASE_URL_WITH_VERSION + APIConstants.HOME;
    var response = await Dio().post("${base_url_dashboard}", queryParameters: {"customer_id":1135});
    print(response.data);
    if(response.statusCode == 200){
      var list = response.data as List;
      return list.map((json)=> DashboardResponse.fromJson(json)).toList();
    }
  }
}