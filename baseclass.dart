import 'package:annabellegetx/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Base extends StatelessWidget {
  Widget appbar() {
    return PreferredSize(
      preferredSize: Size(double.infinity, 90),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.only(left: 10, top: 30),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/ic_back_arrow.png',
                    height: 10,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Go Back',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Center(
              child: Image.asset(
                'assets/images/ic_logo_pink.png',
                width: 150,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget appbarwithlogo() {
    return PreferredSize(
      preferredSize: Size(double.infinity, 90),
      child: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 10),
            child: Image.asset(
          'assets/images/ic_logo_pink.png',
          height: 50,
        )),
      ),
    );
  }

  Widget appbarwithicons() {
    return PreferredSize(
      preferredSize: Size(
        double.infinity,
        90,
      ),
      child: SafeArea(
        child: Container(
          margin: EdgeInsets.fromLTRB(10, 10, 15, 0),
          child: Row(
            children: [
              Image.asset(
                'assets/images/ic_user.png',
                color: ColorStyles.dark_gray,
                height: 25,
              ),
              Spacer(),
              Image.asset(
                'assets/images/ic_logo_pink.png',
              ),
              Spacer(),
              Image.asset(
                'assets/images/ic_search.png',
                color: ColorStyles.dark_gray,
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
