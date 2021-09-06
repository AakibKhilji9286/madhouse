import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:madhouse/Layouts/TopArtistListView.dart';
import 'package:madhouse/Styles/my_colors.dart';
import 'package:madhouse/Styles/my_icons.dart';
import 'package:madhouse/Utils/toolbar.dart';


class SearchCityArtist extends StatefulWidget {
  @override
  _SearchCityArtistState createState() => _SearchCityArtistState();
}

class _SearchCityArtistState extends State<SearchCityArtist> {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor:  black, // navigation bar color
      statusBarColor:  Color(0xff1e2333), // status bar color
      statusBarIconBrightness: Brightness.light, // status bar icons' color
      systemNavigationBarIconBrightness:
      Brightness.light, //navigation bar icons' color
    ));

    return SafeArea(
        child: Scaffold(
          backgroundColor: black,

          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.1, 0.5, 0.7],
                      colors: [
                        Color(0xff1e2333),
                        Color(0x60000000),
                        Color(0x00000000),
                      ],
                    ),
                  ),
                  child: Padding(
                    padding:  EdgeInsets.only(left: 16.7,right: 16.7,top: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(iconBackWhite,width: 40,height: 40,),
                        SizedBox(height: 15,),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(6.7)),
                              color: white),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              SvgPicture.asset(
                                iconSearch,
                                color: black,
                                width: 15,
                                height: 15,
                              ),
                              SizedBox(
                                width: 7.7,
                              ),
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
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 0, vertical: 10),
                                      hintText: "Search DJ’s in Mumbai",
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
                        SizedBox(height: 60,),
                        // TOP DJ’s
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                              "TOP DJ’s",
                              style:  TextStyle(
                                  color: white,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: "CircularXXTTTrial",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 40.0
                              ),
                              textAlign: TextAlign.center
                          ),
                        ),
                        // in Mumbai
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                              "in Mumbai",
                              style: TextStyle(
                                  color:  white,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "CircularXXTTTrial",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 20.0
                              ),
                              textAlign: TextAlign.center
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 16.7,right: 16.7),
                  child: TopArtistListView(),
                )
              ],
            ),
          ),
        ));
  }
}
