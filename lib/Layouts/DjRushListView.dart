import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:madhouse/Model/MerchandiseModel.dart';
import 'package:madhouse/Styles/my_colors.dart';

class DjRushListView extends StatefulWidget {
  @override
  _DjRushListViewState createState() => _DjRushListViewState();
}

class _DjRushListViewState extends State<DjRushListView> {

  /*Dj Rush Listview Data is here*/
  List<MerchandiseModel> onMerchandiseModel = [
    MerchandiseModel( "assets/images/singer.jpg","Kun faya Kun","3h 15min"),
    MerchandiseModel( "assets/images/singer.jpg","Kun faya Kuns","2h 15min"),
    MerchandiseModel( "assets/images/singer.jpg","Kun faya Kun","3h 15min"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListView.builder(
            primary: false,
            shrinkWrap: true,
            padding: EdgeInsets.all(0),
            itemCount: onMerchandiseModel.length,
            itemBuilder: (context, i) => Padding(
              padding:  EdgeInsets.only(bottom: 14.3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    onMerchandiseModel[i].image,
                    width: 73,
                    height: 73,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    width: 11.7,
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
// Kun faya Kun
                        Text(onMerchandiseModel[i].title,
                            style: TextStyle(
                                color: white,
                                fontWeight: FontWeight.w400,
                                fontFamily: "CircularXXTTTrial",
                                fontStyle: FontStyle.normal,
                                fontSize: 14.0),
                            textAlign: TextAlign.left),

                        SizedBox(height: 3,),

                        // 3h 15min
                        Text(
                            onMerchandiseModel[i].price,
                            style: TextStyle(
                                color: light_grey_cccccc,
                                fontWeight: FontWeight.w400,
                                fontFamily: "CircularXXTTTrial",
                                fontStyle:  FontStyle.normal,
                                fontSize: 12.3
                            ),
                            textAlign: TextAlign.left
                        ),

                        SizedBox(height: 13,),

                        // $15
                        Text(
                            "\$15",
                            style:  TextStyle(
                                color:  white,
                                fontWeight: FontWeight.w600,
                                fontFamily: "SFProDisplay",
                                fontStyle:  FontStyle.normal,
                                fontSize: 15.0
                            ),
                            textAlign: TextAlign.left
                        )

                      ],
                    ),
                  ),

                  Container(
                    decoration: BoxDecoration(
                      color: Color(0x4c8db3db),
                      borderRadius: BorderRadius.circular(33)
                    ),
                    child: // Buy Now
                    Padding(
                      padding: const EdgeInsets.only(left: 23,right: 23,top: 7.3,bottom: 7.3),
                      child: Text(
                          "Buy Now",
                          style: TextStyle(
                              color:  Color(0xffb2d0ef),
                              fontWeight: FontWeight.w500,
                              fontFamily: "CircularXXTTTrial",
                              fontStyle:  FontStyle.normal,
                              fontSize: 13.3
                          ),
                          textAlign: TextAlign.center
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
