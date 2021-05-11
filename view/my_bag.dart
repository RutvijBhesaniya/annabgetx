import 'package:annabellegetx/baseclass.dart';
import 'package:annabellegetx/utils/style.dart';
import 'package:flutter/material.dart';

class MyBag extends Base {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarwithicons(),
      body: getBody(),
    );
  }

  Widget getBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
            child: SizedBox(
              width: 210,
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/shopping_bag_sad.png',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Ooops!',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold,fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Seems like your bag is still empty',style: TextStyle(color: ColorStyles.dark_gray),),
                  SizedBox(
                    height: 40,
                  ),
                  startshopping()
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
  Widget startshopping() {
    return Container(
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: Colors.pinkAccent,
        borderRadius: BorderRadius.circular(35),
      ),
      child: Center(
        child: FlatButton(
          child: Text(
            'Start shopping',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
