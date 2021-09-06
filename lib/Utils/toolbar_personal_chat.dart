import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:madhouse/Styles/my_colors.dart';
import 'package:madhouse/Styles/my_icons.dart';


toolbar_personal_chat(BuildContext context,String title,String subtitle){
  return PreferredSize(
      preferredSize: Size.fromHeight(60.0),
      child: Container(
        height: 62,
        color: Color(0xff282828),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15),
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
              padding: EdgeInsets.only(right: 20),
            ),
            
            ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset("assets/images/singer.jpg",width: 43.3,height: 43.3,fit: BoxFit.cover,)),


            SizedBox(width: 11.78,),

            // Log in
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                   title,
                    style:  TextStyle(
                        color:  white,
                        fontWeight: FontWeight.w400,
                        fontFamily: "CircularXXTTTrial",
                        fontStyle:  FontStyle.normal,
                        fontSize: 16.0
                    ),
                    textAlign: TextAlign.left
                ),

                // john25
                Text(
                    subtitle,
                    style: TextStyle(
                        color:   light_grey_cccccc,
                        fontWeight: FontWeight.w300,
                        fontFamily: "CircularXXTTTrial",
                        fontStyle:  FontStyle.normal,
                        fontSize: 13.3
                    ),
                    textAlign: TextAlign.left
                )
              ],
            )
          ],
        ),
      ),
      );
}