import 'package:annabellegetx/baseclass.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class WishList extends Base {
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
              width: 280,

              child: Column(
                children: [
                  Image.asset(
                    'assets/images/ic_wishlist_empty_disable.png',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Welcome!',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Sign-in to view all your favourites.'),
                  SizedBox(
                    height: 40,
                  ),
                  LoginSignupbutton()
                ],
              ),
            ),
          ),
        ),
      ],
    );

  }

  Widget LoginSignupbutton() {
    return Container(
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: Colors.pinkAccent,
        borderRadius: BorderRadius.circular(35),
      ),
      child: Center(
        child: FlatButton(
          child: Text(
            'Login/Sign-up',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
