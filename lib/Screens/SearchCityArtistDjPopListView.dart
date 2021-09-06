import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:madhouse/Layouts/DjPopGridListView.dart';
import 'package:madhouse/Layouts/DjPopListView.dart';
import 'package:madhouse/Layouts/SearchCityArtistTopDjListView.dart';
import 'package:madhouse/Model/MerchandiseModel.dart';
import 'package:madhouse/Model/SongTypeModel.dart';
import 'package:madhouse/Styles/my_colors.dart';
import 'package:madhouse/Styles/my_icons.dart';


class SearchCityArtistDjPopListView extends StatefulWidget {
  @override
  _SearchCityArtistDjPopState createState() => _SearchCityArtistDjPopState();
}

class _SearchCityArtistDjPopState extends State<SearchCityArtistDjPopListView> {

  int mypositionGenre = -1;

  /*Genere Data is here*/

  List<SongTypeModel> onGenreModel = [
    SongTypeModel("Rock"), SongTypeModel("Popup"), ];

  /*More Mixer Data*/

  List<MerchandiseModel> onMerchandiseModel = [
    MerchandiseModel('assets/images/singer.jpg', 'The lost files', 'DJ Alvin' ),
    MerchandiseModel('assets/images/singer.jpg', 'Rockstar metro mix', 'DJ Alvin' ),
    MerchandiseModel('assets/images/singer.jpg', 'Get the first tip', 'DJ Alvin' ),
    MerchandiseModel('assets/images/singer.jpg', 'Most of the lost', 'DJ Alvin'),
    MerchandiseModel('assets/images/singer.jpg', 'Rockstar metro mix', 'DJ Alvin'),
  ];


  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor:  black, // navigation bar color
      statusBarColor:  Color(0x66121212), // status bar color
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
                height: 250,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomCenter,
                    stops: [0.0, 0.7, 0.7],
                    colors: [
                      Color(0x70ffffff),
                      Color(0x00000000),
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
                                    hintText: "Search DJ’s or mixes in Pop",
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
                      SizedBox(height: 16.7,),
                      Container(
                        height: 32,
                        child: ListView.builder(
                          primary: false,
                          shrinkWrap: true,
                          padding: EdgeInsets.all(0),
                          scrollDirection: Axis.horizontal,
                          itemCount: onGenreModel.length,
                          itemBuilder: (context, i) => Padding(
                            padding:  EdgeInsets.only(right: 12),
                            child: GestureDetector(
                              onTap: (){
                                setState(() {
                                  mypositionGenre = i;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: mypositionGenre == i ? LightGreen : black_282828,
                                    borderRadius: BorderRadius.circular(33.3)
                                ),
                                child: // Africa
                                Padding(
                                  padding:  EdgeInsets.only(left: 13.3,right: 13.3,top: 6.7,bottom: 6.7),
                                  child: Text(
                                      onGenreModel[i].title,
                                      style:  TextStyle(
                                          color:  mypositionGenre == i ? black : white,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "CircularXXTTTrial",
                                          fontStyle:  FontStyle.normal,
                                          fontSize: 15.0
                                      ),
                                      textAlign: TextAlign.left
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 40,),
                      // Popular DJ in POP Genre
                      RichText(
                          text: TextSpan(
                              children: [
                                TextSpan(
                                    style: TextStyle(
                                        color:  white,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "CircularXXTTTrial",
                                        fontStyle:  FontStyle.normal,
                                        fontSize: 15.0
                                    ),
                                    text: "Popular DJ in POP "),
                                TextSpan(
                                    style:  TextStyle(
                                        color:  EdTxtBg,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "CircularXXTTTrial",
                                        fontStyle:  FontStyle.normal,
                                        fontSize: 15.0
                                    ),
                                    text: "Genre")
                              ]
                          )
                      )
                    ],
                  ),
                ),
              ),

              Padding(
                padding:  EdgeInsets.only(left: 16.7,right: 16.7),
                child: ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  padding: EdgeInsets.all(0),
                  itemCount: onMerchandiseModel.length,
                  itemBuilder: (context, i) => Padding(
                    padding: const EdgeInsets.only(bottom: 14.3),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(onMerchandiseModel[i].image,width: 44,height: 44,fit: BoxFit.cover,),

                        SizedBox(width: 11.3,),

                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // The lost files
                              Text(
                                  onMerchandiseModel[i].title,
                                  style: TextStyle(
                                      color:  white,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "CircularXXTTTrial",
                                      fontStyle:  FontStyle.normal,
                                      fontSize: 14.0
                                  ),
                                  textAlign: TextAlign.left
                              ),
                              SizedBox(height: 3,),
                              // DJ Alvin
                              Text(
                                  onMerchandiseModel[i].price,
                                  style: TextStyle(
                                      color: grey_acacac,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "CircularXXTTTrial",
                                      fontStyle:  FontStyle.normal,
                                      fontSize: 13.3
                                  ),
                                  textAlign: TextAlign.left
                              )
                            ],
                          ),
                        ),

                        SvgPicture.asset(iconplay_with_white_circle,width: 30,height: 30,)

                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
