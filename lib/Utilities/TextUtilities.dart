import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'Constant.dart';

Text setRegulerText(String text, double size, Color color, FontWeight weight,
    FontStyle fontStyle) {
  return Text(
    text,
    softWrap: true,
    style: TextStyle(
        fontSize: size,
        fontFamily: regularFont,
        fontWeight: weight,
        color: color,
        fontStyle: fontStyle),
  );
}

Text setBoldText(String text, double size, Color color, FontWeight weight,
    FontStyle fontStyle) {
  return Text(
    text,
    softWrap: true,
    style: TextStyle(
        fontSize: size,
        fontFamily: boldFont,
        fontWeight: weight,
        color: color,
        fontStyle: fontStyle),
  );
}

Text setBoldTextWithAlign(String text, double size, Color color,
    FontWeight weight, FontStyle fontStyle, TextAlign alignment) {
  return Text(
    text,
    softWrap: true,
    textAlign: alignment,
    style: TextStyle(
        fontSize: size,
        fontFamily: boldFont,
        fontWeight: weight,
        color: color,
        fontStyle: fontStyle),
  );
}

Text setMemdiumText(String text, double size, Color color, FontWeight weight,
    FontStyle fontStyle) {
  return Text(
    text,
    softWrap: true,
    style: TextStyle(
        fontSize: size,
        fontFamily: mediumFont,
        fontWeight: weight,
        color: color,
        fontStyle: fontStyle),
  );
}
