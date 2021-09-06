import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:madhouse/Layouts/Next_White_Button.dart';
import 'package:madhouse/Screens/Password.dart';
import 'package:madhouse/Styles/my_colors.dart';
import 'package:madhouse/Styles/my_strings.dart';
import 'package:madhouse/Utils/toolbar.dart';

class OTP extends StatefulWidget {
  @override
  _OTPState createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: black,
          appBar: toolbar(context, "Creat Account"),
          body: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 23,),
                      // Your mobile number ?
                      Text(Enter_OTP,
                        style: TextStyle(
                            color:  white,
                            fontWeight: FontWeight.w700,
                            fontFamily: "CircularXXTTTrial-Bold",
                            fontStyle:  FontStyle.normal,
                            fontSize: 30.0
                        ),),

                      SizedBox(height: 6.7,),

                      // Rectangle 12
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.circular(3.7)
                            ),
                            color: EdTxtBg
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12,right: 12,top: 6,bottom: 0),
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: new TextField(
                              style:  TextStyle(
                                  color:  white,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "CircularXXTTTrial-Regular",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 16.0
                              ),
                              decoration: new InputDecoration(
                                isDense: true,
                                counter: Offstage(),
                                // contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 8),
                                hintText: "X X X X",
                                hintStyle: TextStyle(
                                    color:  white,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "CircularXXTTTrial-Regular",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 16.0
                                ),
                                border: InputBorder.none,

                                labelStyle: new TextStyle(
                                    color:  white,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "CircularXXTTTrial-Regular",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 16.0),
                                // hintStyle: TextStyle(
                                //     fontSize: 18.0, color: Colors.black87,fontFamily: 'Poppins',fontWeight: FontWeight.w600
                                // ),
                              ),
                              keyboardType: TextInputType.number,
                              maxLength: 4,

                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 8.7,),
                      // We have send 4 digit code on your mobile number +91 9549990169
                      RichText(
                          text: TextSpan(
                              children: [
                          TextSpan(
                          style: const TextStyle(
                          color:  const Color(0xffffffff),
                          fontWeight: FontWeight.w400,
                          fontFamily: "CircularXXTTTrial-Regular",
                          fontStyle:  FontStyle.normal,
                          fontSize: 11.7
                      ),
                      text: We_have),
                      TextSpan(
                          style: TextStyle(
                              color: white,
                              fontWeight: FontWeight.w400,
                              fontFamily: "CircularXXTTTrial-Regular",
                              fontStyle:  FontStyle.normal,
                              fontSize: 11.7
                          ),
                          text: "\n+91 9549990169")
                    ]
                  )
          ),

                      SizedBox(height: 10,),


                      // Edit phone number
                      Text(
                          Edit_phone_number,
                          style: TextStyle(
                              color:  LightGreen,
                              fontWeight: FontWeight.w400,
                              fontFamily: "CircularXXTTTrial-Regular",
                              fontStyle:  FontStyle.normal,
                              fontSize: 11.7
                          ),
                          textAlign: TextAlign.left
                      )
                    ],
                  ),
                ),

               Next_White_Button(
                 onChanged: (value){
                   setState(() {
                     Navigator.push(context, MaterialPageRoute(
                       builder: (context) => Password(),
                     ));
                   });
                 },
               )
              ],
            ),
          ),
        )
    );
  }
}
