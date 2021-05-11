import 'package:annabellegetx/common/remote_services.dart';
import 'package:annabellegetx/models/response/dashboard_response.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  var list = List<DashboardResponse>().obs;
  var image_list = [].obs;

  void getDashboardData() async {
    var dashboardlist = RemoteServices.fetchDashboardData();
    if (dashboardlist != null) {
      list.value = await dashboardlist;
    }
    var len = list[1].data.bannerSlider.length;
    for (int i = 0; i < len; i++);
    // var datalist = RemoteServices.fetchDashboardData();
    // if (datalist != null) {
    //   list.value = await datalist;
    // }
  }

  @override
  void onInit() {
    getDashboardData();
    super.onInit();
  }
}
