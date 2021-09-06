import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:madhouse/Styles/my_colors.dart';
import 'package:madhouse/Styles/my_strings.dart';
import 'package:madhouse/Utils/toolbar.dart';


class ConnectAppleMusic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: black,
          appBar: toolbar(context, " "),
          body: Column(

            children: [

              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Image.asset('assets/images/apple.png',width: 60,height: 60,),
                      SizedBox(height: 30,),
                      // Connect Facebook
                      Text(
                          Connect_Apple_Music,
                          style: TextStyle(
                              color:  white,
                              fontWeight: FontWeight.w700,
                              fontFamily: "CircularXXTTTrial",
                              fontStyle:  FontStyle.normal,
                              fontSize: 30.0
                          ),
                          textAlign: TextAlign.center
                      ),
                      SizedBox(height: 10,),
                      // Find out your facebook friends on Mad House and Follow them.
                      Text(
                          Connect_With_Apple,
                          style: TextStyle(
                              color:  light_grey_cccccc,
                              fontWeight: FontWeight.w400,
                              fontFamily: "CircularXXTTTrial",
                              fontStyle:  FontStyle.normal,
                              fontSize: 14.0
                          ),
                          textAlign: TextAlign.center
                      ),




                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 18,right: 18,bottom: 30),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      child: Text(Connect,
                          style:TextStyle(
                              color:   txt_color,
                              fontWeight: FontWeight.w700,
                              fontFamily: "CircularXXTTTrial",
                              fontStyle:  FontStyle.normal,
                              fontSize: 15.0)),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: txt_color,
                        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 18),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0), side: BorderSide(color: Colors.black)),
                      )
                  ),
                ),
              ),
            ],
          ),

        ));
  }
}
