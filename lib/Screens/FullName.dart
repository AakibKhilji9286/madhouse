import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:madhouse/Layouts/Next_White_Button.dart';
import 'package:madhouse/Screens/ConnectFacebook.dart';
import 'package:madhouse/Styles/my_colors.dart';
import 'package:madhouse/Styles/my_strings.dart';
import 'package:madhouse/Utilities/TextUtilities.dart';
import 'package:madhouse/Utilities/TextfieldUtility.dart';
import 'package:madhouse/Utils/toolbar.dart';


class FullName extends StatefulWidget {
  @override
  _FullNameState createState() => _FullNameState();
}

class _FullNameState extends State<FullName> {

  var nameTextController = TextEditingController();

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
                        whats_your_name,
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
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child:setTextField(
                              nameTextController,
                              "Aakib Khilji",
                              false,
                              TextInputType.text,
                              false,
                              "",
                                  ()=>{
                                // on Chnages
                              },

                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 8.7,),
                      // Use atlist 8 characters
                      setRegulerText(
                        this_appera,
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
                        builder: (context) => ConnectFacebook(),
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

