import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:madhouse/Model/MerchandiseModel.dart';
import 'package:madhouse/Styles/my_colors.dart';
import 'package:madhouse/Utils/toolbar.dart';


class AddToSpotifyList extends StatefulWidget {
  @override
  _AddToSpotifyListState createState() => _AddToSpotifyListState();
}

class _AddToSpotifyListState extends State<AddToSpotifyList> {

  /*Merchandies  Data*/

  List<MerchandiseModel> onMerchandiseModel = [
    MerchandiseModel( "assets/images/singer.jpg","Party Songs",""),
    MerchandiseModel( "assets/images/singer.jpg","Party Songs",""),
    MerchandiseModel( "assets/images/singer.jpg","Party Songs",""),

  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: black,
          appBar: toolbar(context, "Add To Spotify Playlist"),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

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
                        child: Text(
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
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0x19f0c28e),
                          borderRadius: BorderRadius.circular(33),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 36,right: 36,top: 9,bottom: 9),
                          child: Text(
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
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
