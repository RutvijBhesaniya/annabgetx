import 'package:annabellegetx/common/remote_services.dart';
import 'package:annabellegetx/models/response/category_response.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController {
  var list = List<CategoryResponse>().obs;
  var bool_vals = [].obs;

  void fetchCategory() async {
    var categoryList = RemoteServices.fetchCategoryData();
    if (categoryList != null) {
      list.value = await categoryList;
    }
    var len = list[0].data.allcategories[0].childrenData.length;
    for (int i = 0; i < len; i++) {
      bool_vals.value.add(false);
    }
  }

  @override
  void onInit() {
    fetchCategory();
    super.onInit();
  }
}
