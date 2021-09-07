import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:madhouse/Layouts/Next_White_Button.dart';
import 'package:madhouse/Screens/Gender.dart';
import 'package:madhouse/Styles/my_colors.dart';
import 'package:madhouse/Styles/my_strings.dart';
import 'package:madhouse/Utilities/TextUtilities.dart';
import 'package:madhouse/Utilities/TextfieldUtility.dart';
import 'package:madhouse/Utils/toolbar.dart';


class Password extends StatefulWidget {
  @override
  _PasswordState createState() => _PasswordState();
}

class _PasswordState extends State<Password> {

  var passwordTextController = TextEditingController();

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
                      setBoldText(
                        Create_password,
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
                          child: setTextFieldPassword(
                            passwordTextController,
                            "Enter your password",
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

                      SizedBox(height: 8.7,),
                      // Use atlist 8 characters
                      setRegulerText(
                        use_atlist,
                        11.7,
                        Colors.white,
                        FontWeight.w400,
                        FontStyle.normal,
                      ),
                    ],
                  ),
                ),

                Next_White_Button(
                  onChanged: (value) {
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Gender(),
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

