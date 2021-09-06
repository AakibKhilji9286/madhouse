import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_color_picker/image_color_picker.dart';
import 'package:madhouse/Extra/CircularBorder.dart';
import 'package:madhouse/Model/MerchandiseModel.dart';
import 'package:madhouse/Model/MoreMixModel.dart';
import 'package:madhouse/Model/SongTypeModel.dart';
import 'package:madhouse/Styles/my_colors.dart';
import 'package:madhouse/Styles/my_icons.dart';
import 'dart:math' as math;


class Artist_1 extends StatefulWidget {



  @override
  _Artist_1State createState() => _Artist_1State();
}

class _Artist_1State extends State<Artist_1> with SingleTickerProviderStateMixin{

  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(seconds: 3))..repeat();
  }

  List<SongTypeModel> onSongTypeModel = [
    SongTypeModel( "POP"),
    SongTypeModel( "HIPHOP"),
    SongTypeModel( "BASS"),
    SongTypeModel( "HIPHOP BASS"),
    SongTypeModel( "HIPHOP POP"),
  ];

  /*More Mixer Data*/

  List<MoreMixModel> onMoreMixerModel = [
    MoreMixModel('assets/images/singer.jpg', 'DJ Joe Voundy', '1h 2m', 'assets/images/lock.svg'),
    MoreMixModel('assets/images/singer.jpg', 'DJ Joe Voundy', '1h 2m', ''),
    MoreMixModel('assets/images/singer.jpg', 'DJ Joe Voundy', '1h 2m', 'assets/images/lock.svg'),
    MoreMixModel('assets/images/singer.jpg', 'DJ Joe Voundy', '1h 2m', 'assets/images/lock.svg'),
  ];

  /*Tour Dates Data*/

  List<SongTypeModel> onTourDate = [
    SongTypeModel( "07"),
    SongTypeModel( "08"),
    SongTypeModel( "09"),
    SongTypeModel( "10"),
  ];


  /*Merchandies  Data*/

  List<MerchandiseModel> onMerchandiseModel = [
    MerchandiseModel( "assets/images/singer.jpg","Black Tshirt","Buy Now : \$15"),
    MerchandiseModel( "assets/images/singer.jpg","White Tshirt","Buy Now : \$20"),
    MerchandiseModel( "assets/images/singer.jpg","Yellow Tshirt","Buy Now : \$25"),
    MerchandiseModel( "assets/images/singer.jpg","Green Tshirt","Buy Now : \$30"),
  ];




  @override
  Widget build(BuildContext context) {



    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white, // navigation bar color
      statusBarColor: Colors.transparent, // status bar color
      statusBarIconBrightness: Brightness.light, // status bar icons' color
      systemNavigationBarIconBrightness:
      Brightness.light, //navigation bar icons' color
    ));

    return Material(
      child: Scaffold(
        backgroundColor: Colors.black,
        resizeToAvoidBottomInset: false,

        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              SizedBox(
                height: 350,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xff0246c3),
                        Color(0x007c5050),
                      ],
                    )),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(top:100.0),
                        child: Stack(
                          alignment: Alignment.bottomRight,
                         children: [
                           ClipRRect(
                               borderRadius: BorderRadius.circular(30),
                               child: Image.asset('assets/images/singer.jpg',width: 255,height: 255,fit: BoxFit.none,)),

                           // Ellipse 49
                           Container(
                             width: 55.5,
                             height: 55.5,
                             decoration: BoxDecoration(
                                 color: const Color(0xfffffaf5),
                               borderRadius: BorderRadius.circular(30),
                             ),
                             child: Padding(
                               padding: const EdgeInsets.all(12.0),
                               child: SvgPicture.asset(iconRemark),
                             ),
                           ),
                         ],
                        ),
                      ),




                      // NetworkImageBG(
                      //   networkpath: 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/db/Mabel-42377.jpg/1200px-Mabel-42377.jpg',
                      //
                      // ),

                      // AssetImageBG(
                      //   assetPath: 'assets/images/singer.jpg',
                      // ),

                      Padding(
                        padding: const EdgeInsets.only(
                            left: 16.3, right: 25, bottom: 13, top: 50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              iconDownArrow,
                              width: 15.8,
                              height: 9.5,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                // PLAYING FROM
                                // PLAYING FROM
                                Text(
                                    "PLAYING FROM",
                                    style: const TextStyle(
                                        color:  const Color(0xfffffeff),
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "CircularXXTTTrial",
                                        fontStyle:  FontStyle.normal,
                                        fontSize: 10.0
                                    ),
                                    textAlign: TextAlign.left
                                ),

                                // DJ REHMAN
                                Text("DJ REHMAN",
                                    style: const TextStyle(
                                        color: const Color(0xfffffeff),
                                        fontWeight: FontWeight.w700,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 12),
                                    textAlign: TextAlign.center)
                              ],
                            ),
                            SvgPicture.asset(
                              iconMore,
                              width: 3,
                              height: 17,
                            ),
                          ],
                        ),
                      ),


                    ],
                  ),
                ),
              ),



              Padding(
                padding: const EdgeInsets.only(left: 28.3,top: 30,right: 28.3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                 // The Get Lost Files
                    Text(
                        "The Get Lost Files",
                        style: const TextStyle(
                            color:  const Color(0xffffffff),
                            fontWeight: FontWeight.w700,
                            fontFamily: "CircularXXTTTrial",
                            fontStyle:  FontStyle.normal,
                            fontSize: 18.3
                        ),
                        textAlign: TextAlign.left
                    ),

                    SizedBox(height: 3,),
                    // An absolute club banging mix
                    Text(
                        "An absolute club banging mix",
                        style: const TextStyle(
                            color:  const Color(0xff808080),
                            fontWeight: FontWeight.w400,
                            fontFamily: "CircularXXTTTrial",
                            fontStyle:  FontStyle.normal,
                            fontSize: 14.0
                        ),
                        textAlign: TextAlign.left
                    ),

                    SizedBox(height: 33,),

                    // Rectangle 2460
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.circular(2)
                            ),
                            border: Border.all(
                                color: const Color(0x26ffffff),
                                width: 1
                            ),
                            gradient: LinearGradient(
                                begin: Alignment(0, 0),
                                end: Alignment(0, 0),
                                colors: [const Color(0xffffffff), const Color(0x42ffffff)])
                        ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Calling my phone
                                Text(
                                    "Calling my phone",
                                    style: const TextStyle(
                                        color:  const Color(0xffffffff),
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "CircularXXTTTrial",
                                        fontStyle:  FontStyle.normal,
                                        fontSize: 14.0
                                    ),
                                    textAlign: TextAlign.left
                                ),

                                SizedBox(height: 5,),

                                // Lil Tjay
                                Text(
                                    "Lil Tjay",
                                    style: const TextStyle(
                                        color:  const Color(0xffcccccc),
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


                          Padding(
                            padding: const EdgeInsets.only(top: 5,bottom: 5,right: 16),
                            child: Stack(
                              alignment: Alignment.center,
                             children: [
                               AnimatedBuilder(
                                 animation: _controller,
                                 builder: (_, child) {
                                   return Transform.rotate(
                                     angle: _controller.value * 2 * math.pi,
                                     child: child,
                                   );
                                 },
                                 child: DottedBorder(
                                   child: Container(
                                     height: 50,
                                     width: 50,
                                   ),
                                   borderType: BorderType.Circle,
                                   color: Color(0xff1fd660),
                                   dashPattern: [10,5,10,5,10,5],
                                 ),
                               ),


                               Padding(
                                 padding: const EdgeInsets.all(3.0),
                                 child: ClipRRect(
                                     borderRadius: BorderRadius.circular(50),
                                     child: Image.asset("assets/images/singer.jpg",height: 46,width: 46,fit:BoxFit.cover,)),
                               ),
                             ],
                            ),
                          ),
                        ],
                      ),
                    ),



                    SizedBox(height: 10,),

                    // Tyler the Creator, Curreny, Eza, Felly, TOBi, Marlon Craft, Ty Dollar Sign, Ducko Mcfie
                    Text(
                        "Tyler the Creator, Curreny, Eza, Felly, TOBi, Marlon \nCraft, Ty Dollar Sign, Ducko Mcfie",
                        style: const TextStyle(
                            color:  const Color(0xffcccccc),
                            fontWeight: FontWeight.w400,
                            fontFamily: "CircularXXTTTrial",
                            fontStyle:  FontStyle.normal,
                            fontSize: 13.5
                        ),
                        textAlign: TextAlign.left
                    ),

                    SizedBox(height: 20,),

                    // artist 1_mh
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

                    SizedBox(height: 60,),

                    ProgressBar(
                      progress: Duration(milliseconds: 1000),
                      buffered: Duration(milliseconds: 2000),
                      total: Duration(milliseconds: 5000),
                      bufferedBarColor: Colors.transparent,
                      baseBarColor: Color(0xff393939),
                      thumbColor: Colors.white,
                      thumbRadius: 5,
                      timeLabelLocation: TimeLabelLocation.below,
                      timeLabelTextStyle: TextStyle(color: Color(0xffadaaab),fontWeight: FontWeight.w500,
                          fontFamily: "SFProDisplay",
                          fontStyle:  FontStyle.normal,
                          fontSize: 11.0),
                      progressBarColor: Colors.white,
                      barHeight: 3,
                      onSeek: (duration) {
                        print('User selected a new time: $duration');
                      },
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 35,right: 35,top: 10,bottom: 26),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              SvgPicture.asset(iconBackMusic,width: 33.3,height: 33.3,),
                              // 30 Sec.
                              Text(
                                  "30 Sec.",
                                  style: const TextStyle(
                                      color:  const Color(0xb2ffffff),
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "CircularXXTTTrial",
                                      fontStyle:  FontStyle.normal,
                                      fontSize: 11.0
                                  ),
                                  textAlign: TextAlign.left
                              )
                            ],
                          ),

                          // Ellipse 33
                          Container(
                              width: 58.666666666666664,
                              height: 59,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                  color: const Color(0xff33b18a)
                              ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: SvgPicture.asset(iconPause),
                            ),
                          ),

                          Column(
                            children: [
                              SvgPicture.asset(iconNextMusic,width: 33.3,height: 33.3,),
                              // 30 Sec.
                              Text(
                                  "30 Sec.",
                                  style: const TextStyle(
                                      color:  const Color(0xb2ffffff),
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "CircularXXTTTrial",
                                      fontStyle:  FontStyle.normal,
                                      fontSize: 11.0
                                  ),
                                  textAlign: TextAlign.left
                              )
                            ],
                          )
                        ],
                      ),
                    ),



                  ],
                ),
              ),

              Container(
                decoration: BoxDecoration(
                  color: black,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.7,right: 16.7,top: 33.3),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // More mixes
                              Text(
                                  "More mixes",
                                  style: const TextStyle(
                                      color:  const Color(0xffffffff),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "CircularXXTTTrial",
                                      fontStyle:  FontStyle.normal,
                                      fontSize: 25.0
                                  ),
                                  textAlign: TextAlign.left
                              ),

                              // By DJ Rehman
                              Text(
                                  "By DJ Rehman",
                                  style: const TextStyle(
                                      color:  const Color(0xff808080),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "CircularXXTTTrial",
                                      fontStyle:  FontStyle.normal,
                                      fontSize: 13.3
                                  ),
                                  textAlign: TextAlign.left
                              )
                            ],
                          ),

                          // View All
                          Text(
                              "View All",
                              style: const TextStyle(
                                  color:  const Color(0xff33b18a),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "CircularXXTTTrial",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 14.0
                              ),
                              textAlign: TextAlign.right
                          )
                        ],
                      ),
                      SizedBox(height: 26.7,),

                      GridView.builder(
                        primary: false,
                        shrinkWrap: true,
                        padding: EdgeInsets.all(0),
                        gridDelegate:
                        SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.82,
                            mainAxisSpacing: 15.0,
                            crossAxisSpacing: 15.0),
                        itemCount: onMoreMixerModel.length,
                        itemBuilder: (context, i) => Column(
                          children: [
                            Image.asset(onMoreMixerModel[i].main_image,width: double.infinity,height: 156,fit: BoxFit.cover,),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // DJ Joe Voundy
                                    Text(
                                        onMoreMixerModel[i].title,
                                        style: const TextStyle(
                                            color:  const Color(0xffffffff),
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "CircularXXTTTrial",
                                            fontStyle:  FontStyle.normal,
                                            fontSize: 14.0
                                        ),
                                        textAlign: TextAlign.left
                                    ),

                                    SizedBox(height: 5,),
                                    // 1h 2m
                                    Text(
                                        onMoreMixerModel[i].hours,
                                        style: const TextStyle(
                                            color:  const Color(0xff808080),
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "CircularXXTTTrial",
                                            fontStyle:  FontStyle.normal,
                                            fontSize: 13.3
                                        ),
                                        textAlign: TextAlign.left
                                    )
                                  ],
                                ),
                                SvgPicture.asset(onMoreMixerModel[i].lock,width: 27,height: 27,)
                              ],
                            )
                          ],
                        ),
                      ),

                      SizedBox(height: 50.7,),

                      // Upcoming Concerts
                      Text(
                          "Upcoming Concerts",
                          style: const TextStyle(
                              color:  const Color(0xffffffff),
                              fontWeight: FontWeight.w700,
                              fontFamily: "CircularXXTTTrial",
                              fontStyle:  FontStyle.normal,
                              fontSize: 25.0
                          ),
                          textAlign: TextAlign.left
                      ),

                      // Featuring DJ Rehman
                      Text(
                          "Featuring DJ Rehman",
                          style: const TextStyle(
                              color:  const Color(0xff808080),
                              fontWeight: FontWeight.w400,
                              fontFamily: "CircularXXTTTrial",
                              fontStyle:  FontStyle.normal,
                              fontSize: 13.3
                          ),
                          textAlign: TextAlign.left
                      ),

                      SizedBox(height: 23.3,),
                      
                      Stack(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset('assets/images/conert_bg.png',width: double.infinity,height: 180,fit: BoxFit.fitWidth,)),
                          Container(
                            height: 180,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16.3,right: 16.3,bottom: 16.3,top: 19),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                   // Holiday Nights
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                              "Holiday Nights",
                                              style: const TextStyle(
                                                  color:  const Color(0xff121212),
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: "CircularXXTTTrial",
                                                  fontStyle:  FontStyle.normal,
                                                  fontSize: 21.7
                                              ),
                                              textAlign: TextAlign.left
                                          ),

                                          // at BM Stadium, Newyork
                                          Text(
                                              "at BM Stadium, Newyork",
                                              style: const TextStyle(
                                                  color:  const Color(0xff121212),
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: "CircularXXTTTrial",
                                                  fontStyle:  FontStyle.normal,
                                                  fontSize: 12.7
                                              ),
                                              textAlign: TextAlign.left
                                          )
                                        ],
                                      ),

                                      // MH
                                      Text(
                                          "MH",
                                          style: const TextStyle(
                                              color:  const Color(0x80ffffff),
                                              fontWeight: FontWeight.w900,
                                              fontFamily: "CircularXXTTTrial",
                                              fontStyle:  FontStyle.normal,
                                              fontSize: 30.0
                                          ),
                                          textAlign: TextAlign.left
                                      )
                                    ],
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          // 12
                                          Text(
                                              "12",
                                              style: const TextStyle(
                                                  color:  const Color(0xff121212),
                                                  fontWeight: FontWeight.w900,
                                                  fontFamily: "SFProDisplay",
                                                  fontStyle:  FontStyle.normal,
                                                  fontSize: 31.7
                                              ),
                                              textAlign: TextAlign.left
                                          ),
                                          SizedBox(height: 3,),
                                          // Days
                                          Text(
                                              "Days",
                                              style: const TextStyle(
                                                  color:  const Color(0xe5282828),
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: "CircularXXTTTrial",
                                                  fontStyle:  FontStyle.normal,
                                                  fontSize: 13.3
                                              ),
                                              textAlign: TextAlign.left
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          // 12
                                          Text(
                                              "09",
                                              style: const TextStyle(
                                                  color:  const Color(0xff121212),
                                                  fontWeight: FontWeight.w900,
                                                  fontFamily: "SFProDisplay",
                                                  fontStyle:  FontStyle.normal,
                                                  fontSize: 31.7
                                              ),
                                              textAlign: TextAlign.left
                                          ),
                                          SizedBox(height: 3,),
                                          // Days
                                          Text(
                                              "Hours",
                                              style: const TextStyle(
                                                  color:  const Color(0xe5282828),
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: "CircularXXTTTrial",
                                                  fontStyle:  FontStyle.normal,
                                                  fontSize: 13.3
                                              ),
                                              textAlign: TextAlign.left
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          // 12
                                          Text(
                                              "00",
                                              style: const TextStyle(
                                                  color:  const Color(0xff121212),
                                                  fontWeight: FontWeight.w900,
                                                  fontFamily: "SFProDisplay",
                                                  fontStyle:  FontStyle.normal,
                                                  fontSize: 31.7
                                              ),
                                              textAlign: TextAlign.left
                                          ),
                                          SizedBox(height: 3,),
                                          // Days
                                          Text(
                                              "Mins",
                                              style: const TextStyle(
                                                  color:  const Color(0xe5282828),
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: "CircularXXTTTrial",
                                                  fontStyle:  FontStyle.normal,
                                                  fontSize: 13.3
                                              ),
                                              textAlign: TextAlign.left
                                          )
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),

                      SizedBox(height: 33.3,),
                      // Tour Dates
                      Text(
                          "Tour Dates",
                          style: const TextStyle(
                              color:  const Color(0xff808080),
                              fontWeight: FontWeight.w400,
                              fontFamily: "CircularXXTTTrial",
                              fontStyle:  FontStyle.normal,
                              fontSize: 16.0
                          ),
                          textAlign: TextAlign.left
                      ),

                      SizedBox(height: 16.7,),

                      ListView.builder(
                          primary: false,
                          shrinkWrap: true,
                          padding: EdgeInsets.all(0),
                          itemCount: onTourDate.length,
                          itemBuilder: (context, i) => Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    // 07
                                    Text(
                                        onTourDate[i].title,
                                        style: const TextStyle(
                                            color:  const Color(0xffffffff),
                                            fontWeight: FontWeight.w900,
                                            fontFamily: "SFProDisplay",
                                            fontStyle:  FontStyle.normal,
                                            fontSize: 31.7
                                        ),
                                        textAlign: TextAlign.left
                                    ),

                                    // DEC
                                    Text(
                                        "DEC",
                                        style: const TextStyle(
                                            color:  const Color(0xff808080),
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "CircularXXTTTrial",
                                            fontStyle:  FontStyle.normal,
                                            fontSize: 13.3
                                        ),
                                        textAlign: TextAlign.left
                                    )
                                  ],
                                ),
                                SizedBox(width: 17,),
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      // Holiday Nights
                                      Text(
                                          "Holiday Nights",
                                          style: const TextStyle(
                                              color:  const Color(0xffffffff),
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "CircularXXTTTrial",
                                              fontStyle:  FontStyle.normal,
                                              fontSize: 16.0
                                          ),
                                          textAlign: TextAlign.left
                                      ),

                                      SizedBox(height: 5,),

                                      // Newyork
                                      Text(
                                          "Newyork",
                                          style: const TextStyle(
                                              color:  const Color(0xff808080),
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

                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0xff33b18a)
                                  ),
                                  child: // Buy Ticket
                                  Padding(
                                    padding: const EdgeInsets.only(left: 11,right: 11,top: 5.7,bottom: 5.7),
                                    child: Text(
                                        "Buy Ticket",
                                        style: const TextStyle(
                                            color:  const Color(0xffffffff),
                                            fontWeight: FontWeight.w500,
                                            fontFamily: "CircularXXTTTrial",
                                            fontStyle:  FontStyle.normal,
                                            fontSize: 13.3
                                        ),
                                        textAlign: TextAlign.right
                                    ),
                                  ),
                                )
                              ],


                            ),

                            SizedBox(height: 16.7,),

                            Container(
                              margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                              height: 1,
                              color: viewLine,
                            ),


                            SizedBox(height: 16.7,),
                          ],
                        ),
                      ),

                      SizedBox(height: 50,),

                      Container(
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                                child: Image.asset('assets/images/singer.jpg',width: 95,height: 95,fit: BoxFit.cover,)),

                            SizedBox(height: 15,),
                            // A.R. Rehman
                            Text(
                                "Jessica Labon",
                                style: const TextStyle(
                                    color:  const Color(0xffffffff),
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "CircularXXTTTrial",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 25.0
                                ),
                                textAlign: TextAlign.left
                            ),

                            // Available for DJ Concerts and Celebrities Parties
                            Text(
                                "Available for DJ Concerts and Celebrities Parties",
                                style: const TextStyle(
                                    color:  const Color(0xff808080),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "CircularXXTTTrial",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 13.3
                                ),
                                textAlign: TextAlign.center
                            ),

                            SizedBox(height: 20,),

                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color(0xff33b18a),
                              ),
                              child: // BOOK NOW
                              Padding(
                                padding: const EdgeInsets.only(top: 14,bottom: 14,left: 40,right: 40),
                                child: Text(
                                    "BOOK NOW",
                                    style: const TextStyle(
                                        color:  const Color(0xffffffff),
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

                      SizedBox(height: 50,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // More mixes
                              Text(
                                  "Merchandise",
                                  style: const TextStyle(
                                      color:  const Color(0xffffffff),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "CircularXXTTTrial",
                                      fontStyle:  FontStyle.normal,
                                      fontSize: 25.0
                                  ),
                                  textAlign: TextAlign.left
                              ),

                              // By DJ Rehman
                              Text(
                                  "Buy DJ Jessica Labon",
                                  style: const TextStyle(
                                      color:  const Color(0xff808080),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "CircularXXTTTrial",
                                      fontStyle:  FontStyle.normal,
                                      fontSize: 13.3
                                  ),
                                  textAlign: TextAlign.left
                              )
                            ],
                          ),

                          // View All
                          Text(
                              "View All",
                              style: const TextStyle(
                                  color:  const Color(0xff33b18a),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "CircularXXTTTrial",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 14.0
                              ),
                              textAlign: TextAlign.right
                          )
                        ],
                      ),






                    ],
                  ),
                ),
              ),

              SizedBox(height: 28,),

              Container(
                height: 280,
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
                            style: const TextStyle(
                                color:  const Color(0xffffffff),
                                fontWeight: FontWeight.w400,
                                fontFamily: "CircularXXTTTrial",
                                fontStyle:  FontStyle.normal,
                                fontSize: 14.0
                            ),
                            textAlign: TextAlign.left
                        ),

                        SizedBox(height: 17,),



                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xff33b18a)
                          ),
                          child: // Buy Ticket
                          Padding(
                            padding: const EdgeInsets.only(left: 16,right: 16,top: 8.7,bottom: 8.7),
                            child: Text(
                                onMerchandiseModel[i].price,
                                style: const TextStyle(
                                    color:  const Color(0xffffffff),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "CircularXXTTTrial",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 13.3
                                ),
                                textAlign: TextAlign.right
                            ),
                          ),
                        ),

                        SizedBox(height: 25,),
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
