import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:madhouse/Styles/my_colors.dart';
import 'package:madhouse/Utilities/Constant.dart';


setTextField(
    TextEditingController controller,
    String hintText,
    bool secureEntry,
    TextInputType inputType,
    bool validtion,
    String errorMSg,
    Function onchange) {
  return Theme(
      data: new ThemeData(
        primaryColor: Colors.green,
        primaryColorDark: Colors.red,
      ),
      child: TextField(
        style:  TextStyle(
            color: white,
            fontWeight: FontWeight.w500,
            fontFamily: mediumFont,
            fontStyle:  FontStyle.normal,
            fontSize: 16.0
        ),
        decoration: new InputDecoration(
          isDense: true,
          // contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 8),
          hintText: hintText,
          hintStyle: TextStyle(
              color:  white,
              fontWeight: FontWeight.w500,
              fontFamily: mediumFont,
              fontStyle:  FontStyle.normal,
              fontSize: 16.0
          ),
          border: InputBorder.none,

          labelStyle: new TextStyle(
              color:  white,
              fontWeight: FontWeight.w500,
              fontFamily:mediumFont,
              fontStyle:  FontStyle.normal,
              fontSize: 16.0),
          // hintStyle: TextStyle(
          //     fontSize: 18.0, color: Colors.black87,fontFamily: 'Poppins',fontWeight: FontWeight.w600
          // ),
        ),
      )
  );
}

setTextFieldPassword(
    TextEditingController controller,
    String hintText,
    bool secureEntry,
    TextInputType inputType,
    bool validtion,
    String errorMSg,
    Function onchange) {
  return Theme(
      data: new ThemeData(
        primaryColor: Colors.green,
        primaryColorDark: Colors.red,
      ),
      child: TextField(
        style:  TextStyle(
            color: white,
            fontWeight: FontWeight.w500,
            fontFamily: mediumFont,
            fontStyle:  FontStyle.normal,
            fontSize: 16.0
        ),
        decoration: new InputDecoration(
          isDense: true,
          // contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 8),
          hintText: hintText,
          hintStyle: TextStyle(
              color:  white,
              fontWeight: FontWeight.w500,
              fontFamily: mediumFont,
              fontStyle:  FontStyle.normal,
              fontSize: 16.0
          ),
          border: InputBorder.none,

          labelStyle: new TextStyle(
              color:  white,
              fontWeight: FontWeight.w500,
              fontFamily:mediumFont,
              fontStyle:  FontStyle.normal,
              fontSize: 16.0),
        ),
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
      )
  );
}