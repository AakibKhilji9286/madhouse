import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:madhouse/Extra/CustomContainer.dart';
import 'package:madhouse/Layouts/Next_White_Button.dart';
import 'package:madhouse/Screens/DOB.dart';
import 'package:madhouse/Styles/my_colors.dart';
import 'package:madhouse/Styles/my_strings.dart';
import 'package:madhouse/Utilities/TextUtilities.dart';
import 'package:madhouse/Utils/toolbar.dart';

enum g { m, f, o }

class Gender extends StatefulWidget {
  @override
  _GenderState createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  final activeColor = Color(0xff808080);
  final inactiveColor = Colors.transparent;
  g isSelected;

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
                        SizedBox(
                          height: 23,
                        ),
                        // Your mobile number ?
                        setBoldText(
                          whats_your_gender,
                          30,
                          Colors.white,
                          FontWeight.w700,
                          FontStyle.normal,
                        ),

                        SizedBox(
                          height: 16.7,
                        ),

                        Column(
                          children: [
                            CustomContainer(
                              color: isSelected == g.m
                                  ? activeColor
                                  : inactiveColor,
                              onTap: () {
                                setState(() {
                                  isSelected = g.m;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 11.7,
                                    right: 11.7,
                                    top: 15,
                                    bottom: 15),
                                child: SizedBox(
                                  width: double.infinity,
                                  child:  setRegulerText(
                                    Female,
                                    16,
                                    Colors.white,
                                    FontWeight.w400,
                                    FontStyle.normal,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            CustomContainer(
                              color: isSelected == g.f
                                  ? activeColor
                                  : inactiveColor,
                              onTap: () {
                                setState(() {
                                  isSelected = g.f;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 11.7,
                                    right: 11.7,
                                    top: 15,
                                    bottom: 15),
                                child: SizedBox(
                                  width: double.infinity,
                                  child: setRegulerText(
                                    Male,
                                    16,
                                    Colors.white,
                                    FontWeight.w400,
                                    FontStyle.normal,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            CustomContainer(
                              color: isSelected == g.o
                                  ? activeColor
                                  : inactiveColor,
                              onTap: () {
                                setState(() {
                                  isSelected = g.o;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 11.7,
                                    right: 11.7,
                                    top: 15,
                                    bottom: 15),
                                child: SizedBox(
                                  width: double.infinity,
                                  child: setRegulerText(
                                    Other,
                                    16,
                                    Colors.white,
                                    FontWeight.w400,
                                    FontStyle.normal,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Next_White_Button(
                    onChanged: (value) {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => DOB(),
                        ));
                      });
                    },
                  )
                ],
              ),
            )));
  }
}
