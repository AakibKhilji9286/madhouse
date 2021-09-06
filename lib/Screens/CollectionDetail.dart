import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:madhouse/Model/MerchandiseModel.dart';
import 'package:madhouse/Model/SongTypeModel.dart';
import 'package:madhouse/Styles/my_colors.dart';
import 'package:madhouse/Styles/my_icons.dart';
import 'package:madhouse/Styles/my_strings.dart';


class CollectionDetail extends StatefulWidget {
  @override
  _CollectionState createState() => _CollectionState();
}

class _CollectionState extends State<CollectionDetail> {

  int myposition = 5;

  List<SongTypeModel> onSongTypeModel = [
    SongTypeModel( "MIXES"),
    SongTypeModel( "SONGS"),
    SongTypeModel( "OLD"),
  ];


  /*Merchandies  Data*/

  List<MerchandiseModel> onMerchandiseModel = [
    MerchandiseModel( "assets/images/singer.jpg","Kun faya Kun","A.R. Rehman"),
    MerchandiseModel( "assets/images/singer.jpg","Kun faya Kun","A.R. Rehman"),
    MerchandiseModel( "assets/images/singer.jpg","Kun faya Kun","A.R. Rehman"),
    MerchandiseModel( "assets/images/singer.jpg","Kun faya Kun","A.R. Rehman"),
  ];


  /*Add on click bottom sheet open code*/

  void displayBottomSheet(BuildContext context) {

    showModalBottomSheet(
        isScrollControlled: false,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (ctx) {

          return DraggableScrollableSheet(
              initialChildSize: 0.4,
              maxChildSize: 1,
              minChildSize: 0.1,


              builder: (BuildContext context, ScrollController scrollController) {
                return Container(
                    decoration: new BoxDecoration(
                      //   color: forDialog ? Color(0xFF737373) : Colors.white,
                        color: Color(0xfff1f1f1),
                        borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(30.0),
                            topRight: const Radius.circular(30.0))),
                    //    height: MediaQuery.of(context).size.height  * 0.3,
                    child: Column(
                      children: <Widget>[

                        SizedBox(height: 25,),

                        // ADD TO
                        Text(
                            "ADD TO",
                            style: TextStyle(
                                color:  black,
                                fontWeight: FontWeight.w900,
                                fontFamily: "CircularXXTTTrial",
                                fontStyle:  FontStyle.normal,
                                fontSize: 16.0
                            ),
                            textAlign: TextAlign.center
                        ),
                        SizedBox(height: 3,),
                        // Add song on your other apps playlist
                        Text(
                            "Add song on your other apps playlist",
                            style: TextStyle(
                                color:  EdTxtBg,
                                fontWeight: FontWeight.w400,
                                fontFamily: "CircularXXTTTrial",
                                fontStyle:  FontStyle.normal,
                                fontSize: 14.0
                            ),
                            textAlign: TextAlign.center
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 22,right: 22,top: 30,bottom: 25),
                          child: Row(
                            children: [
                              // Rectangle 13
                              Expanded(
                                flex: 1,
                                child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(66)
                                        ),
                                        boxShadow: [BoxShadow(
                                            color: const Color(0x05000000),
                                            offset: Offset(0,20),
                                            blurRadius: 44,
                                            spreadRadius: 0
                                        )] ,
                                        color: const Color(0xffffffff)
                                    ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset('assets/images/spotify.png',width: 20,height: 20,),
                                        SizedBox(width: 8,),
                                        // Add to Spotify
                                        Text(
                                            "Add to Spotify",
                                            style: TextStyle(
                                                color:  black,
                                                fontWeight: FontWeight.w700,
                                                fontFamily: "CircularXXTTTrial",
                                                fontStyle:  FontStyle.normal,
                                                fontSize: 13.3
                                            ),
                                            textAlign: TextAlign.center
                                        )
                                      ],
                                    ),
                                  )
                                ),
                              ),
                              SizedBox(width: 8,),
                              Expanded(
                                flex: 1,
                                child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(66)
                                        ),
                                        boxShadow: [BoxShadow(
                                            color: const Color(0x05000000),
                                            offset: Offset(0,20),
                                            blurRadius: 44,
                                            spreadRadius: 0
                                        )] ,
                                        color: const Color(0xffffffff)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(14.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Image.asset('assets/images/apple.png',width: 20,height: 20,),
                                          SizedBox(width: 8,),
                                          // Add to Spotify
                                          Text(
                                              "Add to Apple",
                                              style: TextStyle(
                                                  color:  black,
                                                  fontWeight: FontWeight.w700,
                                                  fontFamily: "CircularXXTTTrial",
                                                  fontStyle:  FontStyle.normal,
                                                  fontSize: 13.3
                                              ),
                                              textAlign: TextAlign.center
                                          )
                                        ],
                                      ),
                                    )
                                ),
                              )
                            ],
                          ),
                        )



                        ],
                    )
                );
              }
          );
        }
    );
  }

  /*Remove Song bootm sheet code is here*/


  void displayBottomSheetRemoveSong(BuildContext context) {

    bool _groupValue = false;

    showModalBottomSheet(
        isScrollControlled: false,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (ctx) {

          return DraggableScrollableSheet(
              initialChildSize: 0.4,
              maxChildSize: 1,
              minChildSize: 0.1,


              builder: (BuildContext context, ScrollController scrollController) {
                return Container(
                    decoration: new BoxDecoration(
                      //   color: forDialog ? Color(0xFF737373) : Colors.white,
                        color: Color(0xfff1f1f1),
                        borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(30.0),
                            topRight: const Radius.circular(30.0))),
                    //    height: MediaQuery.of(context).size.height  * 0.3,
                    child: Column(
                      children: <Widget>[

                        SizedBox(height: 25,),

                        // Remove Song
                        Text(
                            remove_song,
                            style: TextStyle(
                                color:  Red_d32416,
                                fontWeight: FontWeight.w900,
                                fontFamily: "CircularXXTTTrial",
                                fontStyle:  FontStyle.normal,
                                fontSize: 16.0
                            ),
                            textAlign: TextAlign.center
                        ),
                        SizedBox(height: 5,),
                        // Remove this will also remove it from all collection
                        Text(
                            "Remove this will also remove it from all collection",
                            style: const TextStyle(
                                color:  EdTxtBg,
                                fontWeight: FontWeight.w400,
                                fontFamily: "CircularXXTTTrial",
                                fontStyle:  FontStyle.normal,
                                fontSize: 14.0
                            ),
                            textAlign: TextAlign.center
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 22,right: 22,top: 25,bottom: 25),
                          child: Row(
                            children: [
                              // Rectangle 13
                              Expanded(
                                flex: 1,
                                child:  SizedBox(
                                  width: double.infinity,
                                  child: ElevatedButton(
                                      child: Text("No cancel",
                                          style:TextStyle(
                                              color:  _groupValue ? txt_color:EdTxtBg,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: "CircularXXTTTrial-Bold",
                                              fontStyle:  FontStyle.normal,
                                              fontSize: 13.3)),
                                      onPressed: () {
                                        _groupValue = !_groupValue;
                                      },

                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        onPrimary: txt_color,
                                        shadowColor: Color(0x05000000),
                                        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 18),
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0), side: BorderSide(color: Colors.white,width: 0),),
                                      )
                                  ),
                                ),
                              ),
                              SizedBox(width: 8,),
                              Expanded(
                                flex: 1,
                                child:  SizedBox(
                                  width: double.infinity,
                                  child: ElevatedButton(
                                      child: Text("Yes remove",
                                          style:TextStyle(
                                              color:   txt_color,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: "CircularXXTTTrial-Bold",
                                              fontStyle:  FontStyle.normal,
                                              fontSize: 13.3)),
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        onPrimary: txt_color,
                                        shadowColor: Color(0x05000000),
                                        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 18),
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0), side: BorderSide(color: Colors.white,width: 0),),
                                      )
                                  ),
                                ),
                              )
                            ],
                          ),
                        )



                      ],
                    )
                );
              }
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: black,
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 483,
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xff995b66),
                            Color(0x00995b66),
                          ],
                        )),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Ellipse 5
                        Padding(
                          padding: const EdgeInsets.only(top: 20,left: 16),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              width: 37.333333333333336,
                              height: 37.333333333333336,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(35)
                                  ),
                                  color: Color(0x4c000000)
                              ),
                              child: SvgPicture.asset(iconBackWhite,),
                            ),
                          ),
                        ),

                        SizedBox(height: 30,),

                        Align(
                          alignment: Alignment.center,
                          child: Image.asset('assets/images/subtract.png', height: 230,
                            width: 230,
                            fit: BoxFit.fill,),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 30,left: 16.7,right: 16.7),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Party Music
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                      Party_Music,
                                      style: const TextStyle(
                                          color: white,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: "CircularXXTTTrial",
                                          fontStyle:  FontStyle.normal,
                                          fontSize: 25.0
                                      ),
                                      textAlign: TextAlign.left
                                  ),

                                  // 13 Mixes : 7 Songs
                                  Text(
                                      "13 Mixes : 7 Songs",
                                      style: const TextStyle(
                                          color:  EdTxtBg,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "CircularXXTTTrial",
                                          fontStyle:  FontStyle.normal,
                                          fontSize: 14.0
                                      ),
                                      textAlign: TextAlign.left
                                  )
                                ],
                              ),

                              SvgPicture.asset(iconPlay,width: 51,height: 51,)
                            ],
                          ),
                        ),

                        SizedBox(height: 30,),


                        Container(
                          height: 40,
                          child: ListView.builder(
                            primary: false,
                            shrinkWrap: true,
                            padding: EdgeInsets.all(0),
                            scrollDirection: Axis.horizontal,
                            itemCount: onSongTypeModel.length,
                            itemBuilder: (context, i) => Padding(
                              padding:  EdgeInsets.only(left: 12),
                              child: GestureDetector(
                                onTap: (){
                                  setState(() {
                                    myposition = i;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: myposition == i ? white : Color(0xff282828) ,
                                    borderRadius: BorderRadius.circular(33),
                                  ),
                                  child: // MIXES
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20,right: 20,top: 7.5,bottom: 7.5),
                                    child: Center(
                                      child: Text(
                                          onSongTypeModel[i].title,
                                          style: TextStyle(
                                              color:  myposition == i ? black : white,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "CircularXXTTTrial",
                                              fontStyle:  FontStyle.normal,
                                              fontSize: 13.3
                                          ),
                                          textAlign: TextAlign.left
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),

                  ),
                ),

                SizedBox(height: 30,),

                ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  padding: EdgeInsets.all(0),
                  itemCount: onMerchandiseModel.length,
                  itemBuilder: (context, i) => Padding(
                    padding: const EdgeInsets.only(left: 16.7,right: 16.7,bottom: 14),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(onMerchandiseModel[i].image,width: 74,height: 74,fit: BoxFit.cover,),
                        SizedBox(width: 11.7,),
                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Kun faya Kun
                              Text(
                                  onMerchandiseModel[i].title,
                                  style: TextStyle(
                                      color: white,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "CircularXXTTTrial",
                                      fontStyle:  FontStyle.normal,
                                      fontSize: 14.0
                                  ),
                                  textAlign: TextAlign.left
                              ),
                              SizedBox(height: 3,),
                              // A.R. Rehman
                              Text(
                                  onMerchandiseModel[i].price,
                                  style: const TextStyle(
                                      color:  light_grey_cccccc,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "CircularXXTTTrial",
                                      fontStyle:  FontStyle.normal,
                                      fontSize: 12.3
                                  ),
                                  textAlign: TextAlign.left
                              )
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () =>  displayBottomSheet(context),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0x19f0c28e),
                              borderRadius: BorderRadius.circular(33),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15,right: 15,top: 9,bottom: 9),
                              child: Row(
                                children: [
                                  // Add to
                                  Text(
                                      "Add to",
                                      style: TextStyle(
                                          color:  coffee_f0c28e,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "CircularXXTTTrial",
                                          fontStyle:  FontStyle.normal,
                                          fontSize: 13.3
                                      ),
                                      textAlign: TextAlign.left
                                  ),
                                  SizedBox(width: 8,),
                                  SvgPicture.asset(iconForward,width: 14,height: 11,)
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                        GestureDetector(
                            onTap: () =>  displayBottomSheetRemoveSong(context),
                            behavior: HitTestBehavior.translucent,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: SvgPicture.asset(iconMoreGrey,width: 15,height: 15,),
                            ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
