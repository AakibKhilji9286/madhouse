import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:madhouse/Extra/CustomContainer.dart';
import 'package:madhouse/Layouts/Next_White_Button.dart';
import 'package:madhouse/Screens/DOB.dart';
import 'package:madhouse/Styles/my_colors.dart';
import 'package:madhouse/Styles/my_strings.dart';
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
                        Row(
                          children: [
                            Text(
                              whats_your_gender,
                              style: TextStyle(
                                  color: white,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "CircularXXTTTrial",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 30.0),
                            ),

                            Text(
                              "?",
                              style: TextStyle(
                                  color: white,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "CircularXXTTTrial-Bold",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 30.0),
                            ),
                          ],
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
                                  child: Text(
                                    Female,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: const Color(0xffffffff),
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "CircularXXTTTrial",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 16.0),
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
                                  child: Text(
                                    Male,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: const Color(0xffffffff),
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "CircularXXTTTrial",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 16.0),
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
                                  child: Text(
                                    Other,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: white,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "CircularXXTTTrial",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 16.0),
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
