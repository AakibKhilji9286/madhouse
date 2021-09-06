import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:madhouse/Model/MerchandiseModel.dart';
import 'package:madhouse/Styles/my_colors.dart';


class DjRushHoriList extends StatefulWidget {
  @override
  _DjRushHoriListState createState() => _DjRushHoriListState();
}

class _DjRushHoriListState extends State<DjRushHoriList> {

  List<MerchandiseModel> onMerchandiseModel = [
    MerchandiseModel( "assets/images/singer.jpg","Get the lost files","\$15"),
    MerchandiseModel( "assets/images/singer.jpg","Live mix coockoo","\$12"),
    MerchandiseModel( "assets/images/singer.jpg","Get the lost files","\$15"),
    MerchandiseModel( "assets/images/singer.jpg","Live mix coockoo","\$12"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 220,
            child: ListView.builder(
              primary: false,
              shrinkWrap: true,
              padding: EdgeInsets.all(0),
              scrollDirection: Axis.horizontal,
              itemCount: onMerchandiseModel.length,
              itemBuilder: (context, i) => Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(onMerchandiseModel[i].image,width: 145,height: 145,fit: BoxFit.cover,),
                    SizedBox(height: 13,),
                    // Mix Name
                    Text(
                        onMerchandiseModel[i].title,
                        style:  TextStyle(
                            color:  light_grey_cccccc,
                            fontWeight: FontWeight.w400,
                            fontFamily: "CircularXXTTTrial",
                            fontStyle:  FontStyle.normal,
                            fontSize: 12.7
                        ),
                        textAlign: TextAlign.left
                    ),

                    SizedBox(height: 2,),



                    // $15
                    Text(
                        onMerchandiseModel[i].price,
                        style:  TextStyle(
                            color:  white,
                            fontWeight: FontWeight.w600,
                            fontFamily: "SFProDisplay",
                            fontStyle:  FontStyle.normal,
                            fontSize: 15.0
                        ),
                        textAlign: TextAlign.left
                    ),

                    SizedBox(height: 25,),
                  ],
                ),
              ),
            ),
          )

        ],
      ),
    );
  }
}
