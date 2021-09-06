import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:madhouse/Layouts/DjRushHoriList.dart';
import 'package:madhouse/Layouts/DjRushListView.dart';
import 'package:madhouse/Model/SongTypeModel.dart';
import 'package:madhouse/Styles/my_colors.dart';
import 'package:madhouse/Styles/my_icons.dart';
import 'package:madhouse/Styles/my_strings.dart';
import 'package:madhouse/Utils/toolbar_second.dart';


class BuyMix extends StatefulWidget {
  @override
  _BuyMixState createState() => _BuyMixState();
}

class _BuyMixState extends State<BuyMix> {

  /*Song Type Data is here*/
  List<SongTypeModel> onSongTypeModel = [
    SongTypeModel( "POP"),
    SongTypeModel( "HIPHOP"),
    SongTypeModel( "BASS"),
    SongTypeModel( "HIPHOP BASS"),
    SongTypeModel( "HIPHOP POP"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: black,
          appBar: toolbar_second(context, "Premium MIXES"),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(height: 30,),

                Padding(
                  padding:  EdgeInsets.only(left: 16.7,right: 16.7),
                  child: Container(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/subtract.png', height: 233,
                          width: 233,
                          fit: BoxFit.cover,),

                        SizedBox(height: 30,),
                        // The Get Lost Files
                        Text(
                            "The Get Lost Files",
                            style: TextStyle(
                                color:  white,
                                fontWeight: FontWeight.w700,
                                fontFamily: "CircularXXTTTrial",
                                fontStyle:  FontStyle.normal,
                                fontSize: 18.3
                            ),
                            textAlign: TextAlign.left
                        ),

                        // 3h 14min
                        Text(
                            "3h 14min",
                            style: TextStyle(
                                color:  EdTxtBg,
                                fontWeight: FontWeight.w400,
                                fontFamily: "CircularXXTTTrial",
                                fontStyle:  FontStyle.normal,
                                fontSize: 14.0
                            ),
                            textAlign: TextAlign.left
                        ),
                        SizedBox(height: 8,),

                        // By DJ Rush
                        Text(
                            "By DJ Rush",
                            style: TextStyle(
                                color:  light_blue_8db3db,
                                fontWeight: FontWeight.w400,
                                fontFamily: "CircularXXTTTrial",
                                fontStyle:  FontStyle.normal,
                                fontSize: 14.0
                            ),
                            textAlign: TextAlign.center
                        ),
                        SizedBox(height: 26,),
                        /*Song Type Listview code is here*/
                        Container(
                          height: 20,
                          child: ListView.builder(
                            primary: false,
                            shrinkWrap: true,
                            padding: EdgeInsets.all(0),
                            scrollDirection: Axis.horizontal,
                            itemCount: onSongTypeModel.length,
                            itemBuilder: (context, i) => Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: const Color(0x26f0c28e)
                                ),
                                child: // POP
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text(
                                      onSongTypeModel[i].title,
                                      style: const TextStyle(
                                          color:  const Color(0xfff0c28e),
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "CircularXXTTTrial",
                                          fontStyle:  FontStyle.normal,
                                          fontSize: 8.7
                                      ),
                                      textAlign: TextAlign.center
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: 26,),

                        SizedBox(
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 50,right: 50),
                            child: ElevatedButton(
                                child: Text("Buy Now \$19",
                                    style:TextStyle(
                                        color:   white,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "CircularXXTTTrial-Bold",
                                        fontStyle:  FontStyle.normal,
                                        fontSize: 15.0)),
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: English_Green_33b18a,
                                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 18),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15), side: BorderSide(color: Colors.black)),
                                )
                            ),
                          ),
                        ),

                        SizedBox(height: 40,),
                        // Premium mixes from DJ Rush
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                              Premium,
                              style: TextStyle(
                                  color:  white,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "CircularXXTTTrial",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 18.3
                              ),
                              textAlign: TextAlign.left
                          ),
                        ),

                        SizedBox(height: 26,),

                        DjRushListView(),

                        SizedBox(height: 10,),

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

                        Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // View all 18 premium mixes
                              Text(
                                  View_All_18,
                                  style: TextStyle(
                                      color:  LightGreen,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "CircularXXTTTrial",
                                      fontStyle:  FontStyle.normal,
                                      fontSize: 16.0
                                  ),
                                  textAlign: TextAlign.center
                              ),
                              SizedBox(width: 11,),
                              SvgPicture.asset(iconNextGreen,width: 5.3,height: 11,),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),



                Container(
                  margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                  height: 1,
                  color: viewLine,
                ),

                SizedBox(height: 30,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 16.7,),
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

                SizedBox(height: 18,),

                DjRushHoriList(),

                SizedBox(height: 10,),

                Padding(
                  padding: const EdgeInsets.only(left: 16.7,right: 16.7),
                  child: Column(
                    children: [
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

                      Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // View all 18 premium mixes
                            Text(
                                View_All_18,
                                style: TextStyle(
                                    color:  LightGreen,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "CircularXXTTTrial",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 16.0
                                ),
                                textAlign: TextAlign.center
                            ),
                            SizedBox(width: 11,),
                            SvgPicture.asset(iconNextGreen,width: 5.3,height: 11,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),


              ],
            ),
          ),
        ));
  }
}
