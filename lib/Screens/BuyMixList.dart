import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:madhouse/Layouts/DjRushListView.dart';
import 'package:madhouse/Model/MerchandiseModel.dart';
import 'package:madhouse/Styles/my_colors.dart';
import 'package:madhouse/Utils/toolbar_second.dart';

class BuyMixList extends StatefulWidget {
  @override
  _BuyMixListState createState() => _BuyMixListState();
}

class _BuyMixListState extends State<BuyMixList> {
  @override
  Widget build(BuildContext context) {

    return SafeArea(
        child: Scaffold(
          backgroundColor: black,
          appBar: toolbar_second(context, ""),
          body: Padding(
            padding: const EdgeInsets.only(left: 16.7,right: 16.7),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(height: 23,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset('assets/images/singer.jpg',width: 50,height: 50,fit: BoxFit.cover,)),
                    SizedBox(width: 11.7,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // DJ Rush
                        Text(
                            "DJ Rush",
                            style: TextStyle(
                                color:  white,
                                fontWeight: FontWeight.w700,
                                fontFamily: "CircularXXTTTrial",
                                fontStyle:  FontStyle.normal,
                                fontSize: 25.0
                            ),
                            textAlign: TextAlign.left
                        ),

                        // 15M Followers
                        Text(
                            "15M Followers",
                            style:  TextStyle(
                                color:  EdTxtBg,
                                fontWeight: FontWeight.w400,
                                fontFamily: "CircularXXTTTrial",
                                fontStyle:  FontStyle.normal,
                                fontSize: 12.7
                            ),
                            textAlign: TextAlign.left
                        )
                      ],
                    )
                  ],
                ),

                SizedBox(height: 33,),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      child: Text("Buy Full package :  \$39",
                          style:TextStyle(
                              color:   txt_color,
                              fontWeight: FontWeight.w700,
                              fontFamily: "CircularXXTTTrial-Bold",
                              fontStyle:  FontStyle.normal,
                              fontSize: 15.0)),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: txt_color,
                        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 18),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0), side: BorderSide(color: Colors.white,width: 0),),
                      )
                  ),
                ),

                SizedBox(height: 23,),

                // Premium mixes
                Text(
                    "Premium mixes",
                    style: TextStyle(
                        color:  white,
                        fontWeight: FontWeight.w700,
                        fontFamily: "CircularXXTTTrial",
                        fontStyle:  FontStyle.normal,
                        fontSize: 18.3
                    ),
                    textAlign: TextAlign.left
                ),

                SizedBox(height: 26,),

                DjRushListView()
              ],
            ),
          ),
        ));
  }
}
