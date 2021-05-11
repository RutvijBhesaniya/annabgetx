
import 'package:annabellegetx/baseclass.dart';
import 'package:annabellegetx/utils/style.dart';
import 'package:annabellegetx/view/Login.dart';
import 'package:annabellegetx/view/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuPage extends Base {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: getBody(),
    );
  }
  Widget getAppBar() {
    return appbarwithlogo();
  }

  Widget getBody() {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Enjoy more features when you sign-in to your account.",
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'AzoSans',
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    width: 160,
                    height: 40,
                    decoration: BoxDecoration(
                        color: ColorStyles.pink,
                        borderRadius: BorderRadius.circular(20)),
                    child: FlatButton(
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        Get.to(Login());
                      },
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 160,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: ColorStyles.pink)),
                    child: FlatButton(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color: ColorStyles.pink, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        Get.to(SignUp());
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 1,
                      color: Colors.black12,
                    ),
                  ),
                ),
                child: GestureDetector(
                  child: TextField(
                    enabled: false,
                    decoration: InputDecoration(
                        hintText: "Our story",
                        hintStyle: TextStyle(color: Colors.black, fontFamily: "AzoSans", fontSize: 16),
                        suffixIcon: Icon(
                          Icons.keyboard_arrow_right,
                          color: Color(0xff0E0E0E),
                        ),
                        border: InputBorder.none),
                  ),
                  onTap: () {},
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 1,
                      color: Colors.black12,
                    ),
                  ),
                ),
                child: GestureDetector(
                  child: TextField(
                    enabled: false,
                    decoration: InputDecoration(
                        hintText: "Contact us",
                        hintStyle: TextStyle(color: Colors.black, fontFamily: "AzoSans", fontSize: 16),
                        suffixIcon: Icon(
                          Icons.keyboard_arrow_right,
                          color: Color(0xff0E0E0E),
                        ),
                        border: InputBorder.none),
                  ),
                  onTap: () {},
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 1,
                      color: Colors.black12,
                    ),
                  ),
                ),
                child: GestureDetector(
                  child: TextField(
                    enabled: false,
                    decoration: InputDecoration(
                        hintText: "Terms and Conditions",
                        hintStyle: TextStyle(color: Colors.black, fontFamily: "AzoSans", fontSize: 16),
                        suffixIcon: Icon(
                          Icons.keyboard_arrow_right,
                          color: Color(0xff0E0E0E),
                        ),
                        border: InputBorder.none),
                  ),
                  onTap: () {},
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 1,
                      color: Colors.black12,
                    ),
                  ),
                ),
                child: GestureDetector(
                  child: TextField(
                    enabled: false,
                    decoration: InputDecoration(
                        hintText: "Size Guide",
                        hintStyle: TextStyle(color: Colors.black, fontFamily: "AzoSans", fontSize: 16),
                        suffixIcon: Icon(
                          Icons.keyboard_arrow_right,
                          color: Color(0xff0E0E0E),
                        ),
                        border: InputBorder.none),
                  ),
                  onTap: () {},
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 1,
                      color: Colors.black12,
                    ),
                  ),
                ),
                child: GestureDetector(
                  child: TextField(
                    enabled: false,
                    decoration: InputDecoration(
                        hintText: "Payment",
                        hintStyle: TextStyle(color: Colors.black, fontFamily: "AzoSans", fontSize: 16),
                        suffixIcon: Icon(
                          Icons.keyboard_arrow_right,
                          color: Color(0xff0E0E0E),
                        ),
                        border: InputBorder.none),
                  ),
                  onTap: () {},
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 1,
                      color: Colors.black12,
                    ),
                  ),
                ),
                child: GestureDetector(
                  child: TextField(
                    enabled: false,
                    decoration: InputDecoration(
                        hintText: "Shipping",
                        hintStyle: TextStyle(color: Colors.black, fontFamily: "AzoSans", fontSize: 16),
                        suffixIcon: Icon(
                          Icons.keyboard_arrow_right,
                          color: Color(0xff0E0E0E),
                        ),
                        border: InputBorder.none),
                  ),
                  onTap: () {},
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 1,
                      color: Colors.black12,
                    ),
                  ),
                ),
                child: GestureDetector(
                  child: TextField(
                    enabled: false,
                    decoration: InputDecoration(
                        hintText: "Returns and Refunds",
                        hintStyle: TextStyle(color: Colors.black, fontFamily: "AzoSans", fontSize: 16),
                        suffixIcon: Icon(
                          Icons.keyboard_arrow_right,
                          color: Color(0xff0E0E0E),
                        ),
                        border: InputBorder.none),
                  ),
                  onTap: () {},
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 1,
                      color: Colors.black12,
                    ),
                  ),
                ),
                child: GestureDetector(
                  child: TextField(
                    enabled: false,
                    decoration: InputDecoration(
                        hintText: "Privacy Policy",
                        hintStyle: TextStyle(color: Colors.black, fontFamily: "AzoSans", fontSize: 16),
                        suffixIcon: Icon(
                          Icons.keyboard_arrow_right,
                          color: Color(0xff0E0E0E),
                        ),
                        border: InputBorder.none),
                  ),
                  onTap: () {},
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 1,
                      color: Colors.black12,
                    ),
                  ),
                ),
                child: GestureDetector(
                  child: TextField(
                    enabled: false,
                    decoration: InputDecoration(
                        hintText: "Stores",
                        hintStyle: TextStyle(color: Colors.black,fontFamily: "AzoSans", fontSize: 16),
                        suffixIcon: Icon(
                          Icons.keyboard_arrow_right,
                          color: Color(0xff0E0E0E),
                        ),
                        border: InputBorder.none),
                  ),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



