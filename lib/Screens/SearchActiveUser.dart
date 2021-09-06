import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:madhouse/Layouts/DjPopListView.dart';
import 'package:madhouse/Model/SongTypeModel.dart';
import 'package:madhouse/Styles/my_colors.dart';
import 'package:madhouse/Styles/my_icons.dart';


class SearchActiveUser extends StatefulWidget {
  @override
  _SearchActiveUserState createState() => _SearchActiveUserState();
}

class _SearchActiveUserState extends State<SearchActiveUser> {

  int mypositionGenre = -1;

  /*Genere Data is here*/

  List<SongTypeModel> onGenreModel = [
    SongTypeModel("Rock"), SongTypeModel("Popup"), SongTypeModel("Top"), SongTypeModel("Dj"), ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: black,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Color(0xff535353),
                child: Row(
                  children: [
                    SvgPicture.asset(iconBackWhite,width: 37.3,height: 37.3,),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding:  EdgeInsets.all(10),
                        child: new TextField(
                          style: const TextStyle(
                              color: white,
                              fontWeight: FontWeight.w500,
                              fontFamily: "CircularXXTTTrial-Medium",
                              fontStyle: FontStyle.normal,
                              fontSize: 16.0),
                          decoration: new InputDecoration(
                            isDense: true,
                            // contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 8),
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
                    SvgPicture.asset(iconClose,width: 21.8,height: 21.7,),
                    SizedBox(width: 10,)
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
                    padding:  EdgeInsets.only(left: 12),
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
                          padding:  EdgeInsets.only(left: 20,right: 20,top: 7.3,bottom: 7.3),
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
              Padding(
                padding: const EdgeInsets.only(left: 16.7,right: 16.7,top: 30),
                child: DjPopListView(),
              )
            ],
          ),
        ));
  }
}
