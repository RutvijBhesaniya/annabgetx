import 'package:annabellegetx/baseclass.dart';
import 'package:annabellegetx/controller/category_controller.dart';
import 'package:annabellegetx/models/response/category_response.dart';
import 'package:annabellegetx/utils/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class MyCategory extends Base {
  CategoryController controller = Get.put(CategoryController());
  var i;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarwithlogo(),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            searchtextform(),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: getCategories(),
            )
          ],
        ),
      ),
    );
  }

  Widget searchtextform() {
    return Container(
      margin: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 0),
      child: Stack(
        children: <Widget>[
          TextFormField(
            enableSuggestions: true,
            style: TextStyle(fontFamily: 'AzoSans'),
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              isDense: true,
              hintStyle: TextStyle(
                fontSize: 16,
                color: ColorStyles.light_gray_text,
                fontFamily: 'AzoSans',
              ),
              hintText: "Looking for something?",
              contentPadding: EdgeInsets.only(bottom: 8, right: 28),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Column(
              children: [
                Container(
                  child: ImageIcon(
                    AssetImage('assets/images/ic_search.png'),
                    color: ColorStyles.black,
                    size: 22,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget getCategories() {
    return GetX<CategoryController>(
      init: controller,
      builder: (val) {
        if (controller.list.length == 0) {
          return Center(child: CircularProgressIndicator());
        } else {
          return Container(
            child: getCategoriesList(),
          );
        }
      },
    );
  }

  Widget getCategoriesList() {
    var _mainCategory = controller.list[0].data.allcategories[0].childrenData;
    return ListView.builder(
      scrollDirection: Axis.vertical,
      //shrinkWrap: true,
      itemCount: _mainCategory.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
                color: ColorStyles.light_gray,
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network(
                          "${_mainCategory[index].image}",
                          height: 150,
                          fit: BoxFit.fill,
                          width: 164,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(left: 20),
                                      child: Text(
                                        _mainCategory[index].name,
                                        textAlign: TextAlign.center,
                                        style: new TextStyle(
                                            fontFamily: 'AzoSans',
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: ColorStyles.dark_gray),
                                      ),
                                    ),
                                    Visibility(
                                      visible: _mainCategory[index]
                                              .name
                                              .toLowerCase() ==
                                          "matching",
                                      child: Container(
                                        margin: EdgeInsets.only(left: 20),
                                        child: Text(
                                          "MUMMY & ME",
                                          textAlign: TextAlign.center,
                                          style: new TextStyle(
                                              fontFamily: 'AzoSans',
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500,
                                              color: ColorStyles.pink),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Visibility(
                                  visible:
                                      _mainCategory[index].childrenData.length >
                                          0,
                                  child: GetX<CategoryController>(
                                    builder: (val) {
                                      return RotatedBox(
                                        quarterTurns:
                                            controller.bool_vals.value[index] ==
                                                    false
                                                ? 0
                                                : 1,
                                        child: IconButton(
                                          icon: Icon(
                                            Icons.arrow_forward_ios,
                                            color: Colors.black,
                                          ),
                                          //onPressed: null,
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    controller.bool_vals[index] =
                        !controller.bool_vals.value[index];
                  },
                ),),
            GetX<CategoryController>(
              builder: (val) {
                return Visibility(
                    visible: controller.bool_vals.value[index],
                    child: Column(
                        children: getExpandableItems(_mainCategory[index]),),);
              },
            ),
            SizedBox(
              height: 20,
            ),
          ],
        );
      },
    );
  }

  getExpandableItems(Allcategory mainCategory) {
    List<Widget> columnContent = [];

    for (Allcategory content in mainCategory.childrenData) {
      columnContent.add(
        new ListTile(
          title: new Text(
            content.name,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                color: ColorStyles.dark_gray,
                fontSize: 20,
                fontFamily: 'AzoSans'),
          ),
          onTap: () {},
        ),
      );
    }
    return columnContent;
    /*ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: sub_category.length,
      itemBuilder: (context, sub_index) {
        return Container(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Center(
              child: Text(
                sub_category[sub_index].name,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        );
      },
    );*/
  }
}
