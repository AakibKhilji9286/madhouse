import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:madhouse/Layouts/Next_White_Button.dart';
import 'package:madhouse/Screens/OTP.dart';
import 'package:madhouse/Styles/my_colors.dart';
import 'package:madhouse/Styles/my_strings.dart';
import 'package:madhouse/Utilities/TextUtilities.dart';
import 'package:madhouse/Utilities/TextfieldUtility.dart';
import 'package:madhouse/Utils/toolbar.dart';


class EnterMobileNumber extends StatefulWidget {

  @override
  _EnterMobileNumberState createState() => _EnterMobileNumberState();
}

class _EnterMobileNumberState extends State<EnterMobileNumber> {


  var mobileNumberTextController = TextEditingController();


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

                      setBoldText(
                        Your_mobile_number,
                        30,
                        Colors.white,
                        FontWeight.w700,
                        FontStyle.normal,
                      ),

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
                          padding: const EdgeInsets.only(left: 12,right: 12,top: 6,bottom: 6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/indian_flag.png',width: 26.7,height: 18,),
                              SizedBox(width: 6,),

                              // +91
                              setMemdiumText(
                                "+91",
                                16,
                                Colors.white,
                                FontWeight.w500,
                                FontStyle.normal,
                              ),

                              SizedBox(width: 6,),

                              Container(
                                  width: 1,
                                  height: 27.333333333333332,
                                  decoration: BoxDecoration(
                                      color: const Color(0x4d000000)
                                  )
                              ),

                              SizedBox(width: 10,),

                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: setTextField(
                                    mobileNumberTextController,
                                    "Enter Mobile Number",
                                    false,
                                    TextInputType.number,
                                    false,
                                    "",
                                        ()=>{
                                      // on Chnages
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 8.7,),

                      // Choose your country code.
                      setRegulerText(
                        Chooseyourcountrycode,
                        11.7,
                        Colors.white,
                        FontWeight.w400,
                        FontStyle.normal,
                      ),

                    ],
                  ),
                ),

                Next_White_Button(
                  onChanged: (value){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => OTP(),
                      ));
                    });
                  },
                ),
              ],
            ),
          ),
        )
    );
  }
}
