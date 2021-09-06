import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class CustomContainer extends StatelessWidget {
  CustomContainer(
      {@required this.child, this.height, this.width, this.onTap, this.color});
  final Function onTap;
  final Widget child;
  final double height;
  final double width;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Color(0xff808080)//                   <--- border width here
            ),
            color: color, borderRadius: BorderRadius.all(Radius.circular(3.7))),
        child: child,
      ),
    );
  }
}