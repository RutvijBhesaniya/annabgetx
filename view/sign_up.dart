import 'package:annabellegetx/baseclass.dart';
import 'package:annabellegetx/utils/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SignUp extends Base {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      body: getbody(),
    );
  }

  Widget getbody() {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(top: 15, left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Create account',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Please fill-up all the fields below.",
              style: TextStyle(fontSize: 20, color: Colors.black54),
            ),
            SizedBox(
              height: 20,
            ),
            firstNameField(),
            SizedBox(height: 16),
            lastNameField(),
            SizedBox(height: 16),
            dobField(),
            SizedBox(height: 16),
            genderField(),
            SizedBox(height: 16),
            emailField(),
            SizedBox(height: 16),
            passwordField(),
            SizedBox(height: 16),
            confirmPasswordField(),
            SizedBox(height: 16),
            submitButton(),
            SizedBox(
              height: 16,
            )
          ],
        ),
      ),
    );
  }

  Widget firstNameField() {
    return Container(
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: Color(0xfff2f2f2),
        borderRadius: BorderRadius.circular(35),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              labelText: 'First name*',
              labelStyle: TextStyle(color: Colors.black)),
        ),
      ),
    );
  }

  Widget lastNameField() {
    return Container(
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: Color(0xfff2f2f2),
        borderRadius: BorderRadius.circular(35),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              labelText: 'Last name*',
              labelStyle: TextStyle(color: Colors.black)),
        ),
      ),
    );
  }

  Widget dobField() {
    return Container(
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: Color(0xfff2f2f2),
        borderRadius: BorderRadius.circular(35),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              labelText: 'Date of Birth',
              labelStyle: TextStyle(color: Colors.black)),
        ),
      ),
    );
  }

  Widget genderField() {
    return Container(
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: Color(0xfff2f2f2),
        borderRadius: BorderRadius.circular(35),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              labelText: 'Gender',
              labelStyle: TextStyle(color: Colors.black)),
        ),
      ),
    );
  }

  Widget emailField() {
    return Container(
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: Color(0xfff2f2f2),
        borderRadius: BorderRadius.circular(35),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              labelText: 'Enter email address*',
              labelStyle: TextStyle(color: Colors.black)),
        ),
      ),
    );
  }

  Widget passwordField() {
    return Container(
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: Color(0xfff2f2f2),
        borderRadius: BorderRadius.circular(35),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              labelText: 'Enter password*',
              labelStyle: TextStyle(color: Colors.black)),
        ),
      ),
    );
  }

  Widget confirmPasswordField() {
    return Container(
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: Color(0xfff2f2f2),
        borderRadius: BorderRadius.circular(35),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              labelText: 'Re-Enter your password*',
              labelStyle: TextStyle(color: Colors.black)),
        ),
      ),
    );
  }

  Widget submitButton() {
    return Container(
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: Colors.pinkAccent,
        borderRadius: BorderRadius.circular(35),
      ),
      child: Center(
        child: FlatButton(
          child: Text(
            'Create Account',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
