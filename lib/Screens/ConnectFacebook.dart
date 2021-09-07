import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:madhouse/Screens/FollowFriends.dart';
import 'package:madhouse/Screens/Permission.dart';
import 'package:madhouse/Styles/my_colors.dart';
import 'package:madhouse/Styles/my_icons.dart';
import 'package:madhouse/Styles/my_strings.dart';
import 'package:madhouse/Utilities/TextUtilities.dart';
import 'package:madhouse/Utils/toolbar.dart';


class ConnectFacebook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: black,
          appBar: toolbar(context, "Find Friend"),
          body: Column(

            children: [

              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(iconFacebook,width: 66.7,height: 66.7,),
                      SizedBox(height: 30,),
                      // Connect Facebook
                      setRegulerText(
                        connect_facebook,
                          30,
                          Colors.white,
                          FontWeight.w700,
                          FontStyle.normal,
                      ),

                      // Find out your facebook friends on Mad House and Follow them.
                      setRegulerTextAlign(
                        find_out,
                        14,
                        Colors.white,
                        FontWeight.w400,
                        FontStyle.normal,
                          TextAlign.center
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 18,right: 18,bottom: 30),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          child:  setRegulerText(
                            Connect,
                            15,
                            txt_color,
                            FontWeight.w700,
                            FontStyle.normal,
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) => FollowFriends(),
                            ));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            onPrimary: txt_color,
                            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 18),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0), side: BorderSide(color: Colors.black)),
                          )
                      ),
                    ),
                 //   SizedBox(height: 30,),
                    // SKIP
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Permission(),
                        ));
                      },
                      child:  setRegulerText(
                        SKIP,
                        14,
                        Colors.white,
                        FontWeight.w400,
                        FontStyle.normal,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),

        ));
  }
}
