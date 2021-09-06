import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:madhouse/Styles/my_colors.dart';
import 'package:madhouse/Styles/my_strings.dart';
import 'package:madhouse/Utilities/TextUtilities.dart';


class Next_White_Button extends StatelessWidget {

  final ValueChanged<String>onChanged;

  const Next_White_Button({Key key, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
         children: [
           Column(
             children: [
               SizedBox(
                 width: double.infinity,
                 child: ElevatedButton(
                     child: setBoldText(
                       next,
                       15,
                       txt_color,
                       FontWeight.w700,
                       FontStyle.normal,
                     ),
                     onPressed: () {
                       onChanged("");
                     },
                     style: ElevatedButton.styleFrom(
                       primary: Colors.white,
                       onPrimary: txt_color,
                       padding: EdgeInsets.symmetric(horizontal: 0, vertical: 18),
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0), side: BorderSide(color: Colors.white,width: 0),),
                     )
                 ),
               ),
             ],
           ),
         ],
        ));
  }
}
