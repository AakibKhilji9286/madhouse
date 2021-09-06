import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:madhouse/Styles/my_colors.dart';
import 'package:madhouse/Styles/my_strings.dart';
import 'package:madhouse/Utilities/Constant.dart';
import 'package:madhouse/Utilities/TextUtilities.dart';
import 'package:madhouse/Utilities/TextfieldUtility.dart';
import 'package:madhouse/Utils/toolbar.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  var emailTextController = TextEditingController();
  var passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    return SafeArea(
        child: Scaffold(
          backgroundColor: black,
          appBar: toolbar(context, "Login"),
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
                      setBoldText(
                        mobile,
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
                          padding:  EdgeInsets.all(12),
                          child: setTextField(
                            emailTextController,
                            "Enter Email",
                            false,
                            TextInputType.emailAddress,
                              false,
                            "",
                                  ()=>{
                              // on Chnages
                              },

                              ),
                          ),
                        ),


                      SizedBox(height: 21,),

                      // Your password
                      setBoldText(
                        password,
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
                          padding:  EdgeInsets.all(12),
                          child:  setTextFieldPassword(
                            passwordTextController,
                            "Enter Password",
                            false,
                            TextInputType.visiblePassword,
                            false,
                            "",
                                ()=>{
                              // on Chnages
                            },

                          ),
                        ),
                      ),

                      SizedBox(height: 21.7,),

                      Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: (){},
                          child:
                          setRegulerText(
                            forgot_password,
                            15,
                            Colors.white,
                            FontWeight.w400,
                            FontStyle.normal,
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      child:  setBoldText(
                        login,
                        15,
                        black,
                        FontWeight.w700,
                        FontStyle.normal,
                      ),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: LightGreen,
                        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 18),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0), side: BorderSide(color: Colors.black)),
                      )
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
