import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:madhouse/Screens/Login.dart';
import 'package:madhouse/Styles/my_colors.dart';
import 'package:madhouse/Styles/my_icons.dart';
import 'package:madhouse/Styles/my_strings.dart';
import 'package:madhouse/Utilities/Constant.dart';
import 'package:madhouse/Utilities/TextUtilities.dart';

import 'EnterMobileNumber.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment(0, 0),
                end: Alignment(0, 0),
                colors: [Color(0x00000000), Color(0xff121212)])),
        child: SingleChildScrollView(
          child: (Column(
            children: [
              Image.asset(
                'assets/images/wlcm_img.png',
                fit: BoxFit.fill,
                height: 400,
                width: double.infinity,
                alignment: Alignment.center,
              ),

              SizedBox(height: 50,),

              Container(
                child: setBoldText(
                    MILLIONS,
                    43.3,
                    Colors.white,
                    FontWeight.w700,
                    FontStyle.normal,

                ),
              ),

              Container(
                child: setBoldText(
                  OF_SONGS_ON_MAD_HOUSE,
                  22.7,
                  Colors.white,
                  FontWeight.w700,
                  FontStyle.normal,
                ),
              ),

              SizedBox(height: 45,),

              Padding(
                padding: const EdgeInsets.only(left: 27.7,right: 27.7),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: setBoldText(
                      signup,
                      15,
                      black,
                      FontWeight.w700,
                      FontStyle.normal,

                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => EnterMobileNumber(),
                      ));
                    },
                    style: ElevatedButton.styleFrom(
                        primary: LightGreen,
                      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 18),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0), side: BorderSide(color: Colors.black)),
                    )
                  ),
                ),
              ),

              SizedBox(height: 13.3,),
              // Rectangle 2449
              Padding(
                padding: const EdgeInsets.only(left: 27.7,right: 27.7),
                child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(30)
                        ),
                        border: Border.all(
                            color: const Color(0xffcccccc),
                            width: 1
                        ),
                        color: black
                    ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Image.asset('assets/images/snapchat.png',width: 23.3,height: 23.3,),

                        // Continue with Snapchat
                        Expanded(
                          child:setBoldTextWithAlign(
                            continue_with_snapchat,
                            15,
                            Colors.white,
                            FontWeight.w700,
                            FontStyle.normal,
                            TextAlign.center
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),
              // Log in
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Login(),
                  ));
                },
                child:setBoldText(
                  LOGIN,
                  15,
                  Colors.white,
                  FontWeight.w700,
                  FontStyle.normal,
                ),
              )


            ],
          )),
        ),
      ),
    );
  }
}
