import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Controller extends GetxController{
  var count=0.obs;
  RxBool checkval=false.obs;
  var val = "Login".obs;

  changeCheckBox(){
    return checkval.value = !checkval.value;
  }
}