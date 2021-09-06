import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:madhouse/Model/MerchandiseModel.dart';
import 'package:madhouse/Styles/my_colors.dart';
import 'package:madhouse/Styles/my_strings.dart';
import 'package:madhouse/Utils/toolbar.dart';

import 'SelectMusicLanguage.dart';

class FollowFriends extends StatefulWidget {
  @override
  _FollowFriendsState createState() => _FollowFriendsState();
}

class _FollowFriendsState extends State<FollowFriends> {

  int myposition = 0;

  bool _isShown = false;

  List<MerchandiseModel> onMerchandiseModel = [];
  List<MerchandiseModel> selectedList = [];

  @override
  void initState() {
    onMerchandiseModel.clear();
    onMerchandiseModel.add(MerchandiseModel( "assets/images/singer.jpg","John Doe","john_doe25"));
    onMerchandiseModel.add(MerchandiseModel( "assets/images/singer.jpg","Erik","erik_90"));
    onMerchandiseModel.add(MerchandiseModel( "assets/images/singer.jpg","John Doe","john_doe25"));
    onMerchandiseModel.add(MerchandiseModel( "assets/images/singer.jpg","Erik","erik_90"));
    onMerchandiseModel.add(MerchandiseModel( "assets/images/singer.jpg","John Doe","john_doe25"));
    onMerchandiseModel.add(MerchandiseModel( "assets/images/singer.jpg","Erik","erik_90"));
    onMerchandiseModel.add(MerchandiseModel( "assets/images/singer.jpg","John Doe","john_doe25"));
    onMerchandiseModel.add(MerchandiseModel( "assets/images/singer.jpg","Erik","erik_90"));
    super.initState();
  }

  // /*Merchandies  Data*/
  //
  // List<MerchandiseModel> onMerchandiseModel = [
  //   MerchandiseModel( "assets/images/singer.jpg","John Doe","john_doe25"),
  //   MerchandiseModel( "assets/images/singer.jpg","Erik","erik_90"),
  //   MerchandiseModel( "assets/images/singer.jpg","John Doe","john_doe25"),
  //   MerchandiseModel( "assets/images/singer.jpg","Erik","erik_90"),
  //   MerchandiseModel( "assets/images/singer.jpg","John Doe","john_doe25"),
  //   MerchandiseModel( "assets/images/singer.jpg","Erik","erik_90"),
  //   MerchandiseModel( "assets/images/singer.jpg","John Doe","john_doe25"),
  //   MerchandiseModel( "assets/images/singer.jpg","Erik","erik_90"),
  //   MerchandiseModel( "assets/images/singer.jpg","John Doe","john_doe25"),
  //   MerchandiseModel( "assets/images/singer.jpg","Erik","erik_90"),
  //   MerchandiseModel( "assets/images/singer.jpg","John Doe","john_doe25"),
  //   MerchandiseModel( "assets/images/singer.jpg","Erik","erik_90"),
  //
  // ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: black,
          appBar: toolbar(context, "Follow your Friends"),
          body: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: ListView.builder(
                    primary: false,
                    shrinkWrap: true,
                    padding: EdgeInsets.all(0),
                    itemCount: onMerchandiseModel.length,
                    itemBuilder: (context, i) => GestureDetector(
                      onTap: (){

                        setState(
                              () {
                            if (selectedList.contains(onMerchandiseModel[i])) {
                              selectedList.remove(onMerchandiseModel[i]);
                            } else {
                              selectedList.add(onMerchandiseModel[i]);
                            }
                          },
                        );
                        print(selectedList.length);
                        print(onMerchandiseModel.length);

                      },
                      child: Column(
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(onMerchandiseModel[i].image,width: 54,height: 54,fit: BoxFit.cover,),
                              ),
                              SizedBox(width: 15,),
                              Expanded(
                                flex: 1,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // John Doe
                                    Text(
                                        onMerchandiseModel[i].title,
                                        style: TextStyle(
                                            color:  white,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "CircularXXTTTrial",
                                            fontStyle:  FontStyle.normal,
                                            fontSize: 16.0
                                        ),
                                        textAlign: TextAlign.left
                                    ),
                                    SizedBox(height: 3,),
                                    // john_doe25
                                    Text(
                                        onMerchandiseModel[i].price,
                                        style: TextStyle(
                                            color:  EdTxtBg,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "Roboto",
                                            fontStyle:  FontStyle.normal,
                                            fontSize: 13.3
                                        ),
                                        textAlign: TextAlign.left
                                    )
                                  ],
                                ),
                              ),
                              // Rectangle 2453
                              Container(
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [ gredient_first,  gredient_Second]
                                  ),
                                  border: Border.all(
                                      color: selectedList.contains(onMerchandiseModel[i]) ? Colors.transparent:Color(0xff2f8be6),
                                      width: 1
                                  ),
                                  color: selectedList.contains(onMerchandiseModel[i]) ? black:Colors.transparent,
                                ),
                                child: // Follow
                                Padding(
                                  padding: const EdgeInsets.only(top: 6.7,bottom: 6.7),
                                  child: Text(
                                      selectedList.contains(onMerchandiseModel[i]) ?"Follow":"Unfollow",
                                      style: TextStyle(
                                          color:  white,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "CircularXXTTTrial",
                                          fontStyle:  FontStyle.normal,
                                          fontSize: 14.0
                                      ),
                                      textAlign: TextAlign.center
                                  ),
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 16,),

                          Container(
                            margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                            height: 1,
                            color: viewLine,
                          ),

                          SizedBox(height: 16,),

                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      child: Text(Connect,
                          style:TextStyle(
                              color:   txt_color,
                              fontWeight: FontWeight.w700,
                              fontFamily: "CircularXXTTTrial-Bold",
                              fontStyle:  FontStyle.normal,
                              fontSize: 15.0)),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => SelectMusicLanguage(),
                        ));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: txt_color,
                        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 18),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0), side: BorderSide(color: Colors.black)),
                      )
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
