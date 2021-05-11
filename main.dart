
import 'package:annabellegetx/utils/navigationbar.dart';
import 'package:annabellegetx/view/Dashboard.dart';
import 'package:annabellegetx/view/my_bag.dart';
import 'package:annabellegetx/view/my_category.dart';
import 'package:annabellegetx/view/sign_up.dart';
import 'package:annabellegetx/view/wishlistscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        accentColor: Colors.pink,
        primarySwatch: Colors.blue
      ),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: DashBoard(),
    );
  }
}
