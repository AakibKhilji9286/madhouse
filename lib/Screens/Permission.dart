import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:madhouse/Styles/my_colors.dart';
import 'package:madhouse/Styles/my_icons.dart';
import 'package:madhouse/Styles/my_strings.dart';
import 'package:madhouse/Utils/toolbar.dart';

class Permission extends StatefulWidget {
  @override
  _PermissionState createState() => _PermissionState();
}

class _PermissionState extends State<Permission> {
  bool _value = false;
  bool _value1 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: black,
      appBar: toolbar(context, "Permission"),

      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  iconCamera,
                  width: 33.3,
                  height: 33.3,
                ),
                SizedBox(
                  width: 16.7,
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Camera and Mic
                      Text(Camera_Mic,
                          style: TextStyle(
                              color: white,
                              fontWeight: FontWeight.w700,
                              fontFamily: "CircularXXTTTrial",
                              fontStyle: FontStyle.normal,
                              fontSize: 25.0),
                          textAlign: TextAlign.left),
                      SizedBox(
                        height: 5,
                      ),
                      // So you can see you friedn and they can hear you.
                      Text(so_you,
                          style: TextStyle(
                              color: EdTxtBg,
                              fontWeight: FontWeight.w400,
                              fontFamily: "CircularXXTTTrial",
                              fontStyle: FontStyle.normal,
                              fontSize: 13.3),
                          textAlign: TextAlign.left)
                    ],
                  ),
                ),

                Center(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _value = !_value;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color:_value ? Colors.transparent : Color(0xffcccccc), //                   <--- border color
                              width: 1.0,
                            ),
                            color: _value ? LightGreen : Colors.transparent),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: _value
                              ? Icon(
                            Icons.check,
                            size: 15.0,
                            color: black,
                          )
                              : Icon(
                            Icons.check_box_outline_blank,
                            size: 15.0,
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    )),
              ],
            ),

            SizedBox(height: 20,),

            Container(
              margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
              height: 1,
              color: viewLine,
            ),

            SizedBox(height: 20,),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  iconNotification,
                  width: 33.3,
                  height: 33.3,
                ),
                SizedBox(
                  width: 16.7,
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Camera and Mic
                      Text(Notifications,
                          style: TextStyle(
                              color: white,
                              fontWeight: FontWeight.w700,
                              fontFamily: "CircularXXTTTrial",
                              fontStyle: FontStyle.normal,
                              fontSize: 25.0),
                          textAlign: TextAlign.left),
                      SizedBox(
                        height: 5,
                      ),
                      // So you can see you friedn and they can hear you.
                      Text(so_you_every_time,
                          style: TextStyle(
                              color: EdTxtBg,
                              fontWeight: FontWeight.w400,
                              fontFamily: "CircularXXTTTrial",
                              fontStyle: FontStyle.normal,
                              fontSize: 13.3),
                          textAlign: TextAlign.left)
                    ],
                  ),
                ),

                Center(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _value1 = !_value1;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color:_value1 ? Colors.transparent : Color(0xffcccccc), //                   <--- border color
                              width: 1.0,
                            ),
                            color: _value1 ? LightGreen : Colors.transparent),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: _value1
                              ? Icon(
                            Icons.check,
                            size: 15.0,
                            color: black,
                          )
                              : Icon(
                            Icons.check_box_outline_blank,
                            size: 15.0,
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    )),
              ],
            ),

          ],
        ),
      ),
    ));
  }
}
