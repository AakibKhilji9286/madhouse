import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:madhouse/Model/SongTypeModel.dart';
import 'package:madhouse/Styles/my_colors.dart';
import 'package:madhouse/Styles/my_icons.dart';
import 'package:madhouse/Utils/toolbar.dart';

class SearchCity extends StatefulWidget {
  @override
  _SearchCityState createState() => _SearchCityState();
}

class _SearchCityState extends State<SearchCity> {

  List<SongTypeModel> onSongTypeModel = [
    SongTypeModel( "Mumbai"),
    SongTypeModel( "Delhi"),
    SongTypeModel( "Pune"),
    SongTypeModel( "Kolkatta"),
    SongTypeModel( "Surat"),
    SongTypeModel( "Vadodara"),
    SongTypeModel( "Indor"),
    SongTypeModel( "Ahmdabad"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: black,
          appBar: toolbar(context, "India"),
          body: SingleChildScrollView(
            child: Padding(
              padding:  EdgeInsets.all(16.7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6.7)),
                        color: white),
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        SvgPicture.asset(
                          iconSearch,
                          color: black,
                          width: 15,
                          height: 15,
                        ),
                        SizedBox(width: 7.7,),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: new TextField(
                              style: const TextStyle(
                                  color: white,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "CircularXXTTTrial-Medium",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 15.0),
                              decoration: new InputDecoration(
                                isDense: true,
                                 contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                                hintText: "Search city in india",
                                hintStyle: TextStyle(
                                    color: EdTxtBg,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "CircularXXTTTrial",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 16.0),
                                border: InputBorder.none,

                                labelStyle: new TextStyle(
                                    color: white,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "CircularXXTTTrial",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 16.0),
                                // hintStyle: TextStyle(
                                //     fontSize: 18.0, color: Colors.black87,fontFamily: 'Poppins',fontWeight: FontWeight.w600
                                // ),
                              ),
                              keyboardType: TextInputType.text,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 30,),

                  ListView.builder(
                    primary: false,
                    shrinkWrap: true,
                    padding: EdgeInsets.all(0),
                    itemCount: onSongTypeModel.length,
                    itemBuilder: (context, i) => Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Mumbai
                            Text(
                                onSongTypeModel[i].title,
                                style:  TextStyle(
                                    color: white,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "CircularXXTTTrial",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 16.0
                                ),
                                textAlign: TextAlign.left
                            ),
                            Icon(Icons.navigate_next_rounded,color: EdTxtBg,size: 20,)
                          ],
                        ),
                        SizedBox(height: 19,),
                        Container(
                          margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                          height: 1,
                          color: viewLine,
                        ),
                        SizedBox(height: 19,),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
