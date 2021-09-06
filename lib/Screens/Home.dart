import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:madhouse/Model/MerchandiseModel.dart';
import 'package:madhouse/Model/SongTypeModel.dart';
import 'package:madhouse/Styles/my_colors.dart';
import 'package:madhouse/Styles/my_icons.dart';
import 'package:madhouse/Styles/my_strings.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool selected = true;

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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: black,
          body: Column(
            children: [
              Expanded(
                flex: 1,
                child: SingleChildScrollView(
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
                              SizedBox(width: 20,),
                              SvgPicture.asset(iconMoreGrey,width: 15,height: 15,)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),

              Container(
                color: black_282828,
                child: Row(
                  children: [
                    Image.asset("assets/images/singer.jpg",width: 56,height: 56,fit: BoxFit.cover,),
                    SizedBox(width: 11.3,),
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Get the first tip
                          Text(
                              "Get the first tip",
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

                          // Mike C
                          Text(
                              "Mike C",
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
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            selected = !selected;
                          });
                        },
                        child: Icon(selected ? Icons.play_arrow : Icons.pause,size: 32,color: white,)),
                    SizedBox(width: 30,)
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
