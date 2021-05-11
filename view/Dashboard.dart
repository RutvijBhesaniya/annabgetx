

import 'package:annabellegetx/baseclass.dart';
import 'package:annabellegetx/controller/dashboard_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashBoard extends Base {
  DashboardController controller = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: appbarwithicons(), body: CourselSlider());
  }

  Widget CourselSlider() {
    return GetX<DashboardController>(
      init: controller,
      builder: (val) {
        if (controller.list.length == 0) {
          return Center(child: CircularProgressIndicator());
        } else {
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: controller.list[0].data.bannerSlider.length,
            itemBuilder: (context,index){
              return Image.network(controller.list[0].data.bannerSlider[index].image);
            },
          );
        }
      },
    );
  }
}
