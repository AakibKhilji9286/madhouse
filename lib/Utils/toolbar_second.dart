import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:madhouse/Styles/my_colors.dart';
import 'package:madhouse/Styles/my_icons.dart';


toolbar_second(BuildContext context,String title){
  return PreferredSize(
      preferredSize: Size.fromHeight(50.0),
      child: Container(
        height: 50,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8),
            ),
            GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: SvgPicture.asset(iconBackWhite,height: 37.3,width: 37.7,)),
            // IconButton(
            //     icon: Icon(
            //       Icons.arrow_back,
            //       size: 30,
            //       color: Colors.black,
            //     ),
            //     onPressed: () {
            //       Navigator.pop(context);
            //     }),
            Padding(
              padding: EdgeInsets.only(right: 100),
            ),
            // Log in
            Text(
               title,
                style: TextStyle(
                    color:  coffee_f0c28e,
                    fontWeight: FontWeight.w500,
                    fontFamily: "CircularXXTTTrial",
                    fontStyle:  FontStyle.normal,
                    fontSize: 13.0
                ),
                textAlign: TextAlign.left
            )
          ],
        ),
      ),
      /*child: Material(
        elevation: 2,
        color: Colors.white,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                    child: SvgPicture.asset(iconBack,height: 37.3,width: 37.7,)),
                // IconButton(
                //     icon: Icon(
                //       Icons.arrow_back,
                //       size: 30,
                //       color: Colors.black,
                //     ),
                //     onPressed: () {
                //       Navigator.pop(context);
                //     }),
                Padding(
                  padding: EdgeInsets.only(right: 100),
                ),
                Text(
                  title,
                  style: TextStyle( color: txt_color,
                      fontWeight: FontWeight.w700,
                      fontFamily: "SFProDisplay",
                      fontStyle:  FontStyle.normal,
                      fontSize: 18.3
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      )*/);
}