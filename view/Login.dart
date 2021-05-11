
import 'package:annabellegetx/baseclass.dart';
import 'package:annabellegetx/controller/controller.dart';
import 'package:annabellegetx/utils/style.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class Login extends Base {
  final basecontroller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: getBody(),
    );
  }

  getAppBar() {
   return appbar();
  }
  Widget getBody() {
    return SafeArea(
      child: Container(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              new Text(
                "Welcome back!",
                style: new TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff000000)),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Text(
                  "If you have an account with us, login using your email "
                  "address",
                  style: new TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff000000)),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black12,
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                        labelText: "Email address",
                        labelStyle: TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.bold),
                        border: InputBorder.none),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black12,
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.bold),
                        border: InputBorder.none),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  GetX<Controller>(builder: (controller) {
                    return Checkbox(
                      value: controller.checkval.value,
                      onChanged: (value) {
                        controller.changeCheckBox();
                      },
                    );
                  }),
                  Text("Keep me logged in"),
                  SizedBox(
                    width: 10,
                    height: 10,
                  ),
                  Text(
                    "Forget your password?",
                    style: TextStyle(color: Colors.black12),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: ColorStyles.pink),
                  child: GetX<Controller>(builder: (controller) {
                    return MaterialButton(
                      minWidth: Get.width * 0.8,
                      elevation: 5,
                      child: Text(
                        "${controller.val.value}",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        print(controller.count.value);
                      },
                    );
                  }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
