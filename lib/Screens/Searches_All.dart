import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:madhouse/Layouts/TopArtistListView.dart';
import 'package:madhouse/Model/SongTypeModel.dart';
import 'package:madhouse/Styles/my_colors.dart';
import 'package:madhouse/Styles/my_icons.dart';
import 'package:madhouse/Utils/toolbar.dart';

class Searches_All extends StatefulWidget {
  @override
  _Searches_AllState createState() => _Searches_AllState();
}

int myposition = -1;
int mypositionState = -1;
int mypositionGenre = -1;
int mypositionGenreSub = -1;


/*Country Data is here*/

List<SongTypeModel> onCountryModel = [
  SongTypeModel("Africa"), SongTypeModel("India"), SongTypeModel("London"), SongTypeModel("America"), SongTypeModel("Dubai"),];

/*State Data is here*/

List<SongTypeModel> onStateModel = [
  SongTypeModel("Argentina"), SongTypeModel("Rawanda"), SongTypeModel("Mongolia"), SongTypeModel("Spain"), SongTypeModel("Dubai"),];

/*Genere Data is here*/

List<SongTypeModel> onGenreModel = [
  SongTypeModel("Rock"), SongTypeModel("Popup"), SongTypeModel("Classic"), SongTypeModel("Bazz"), SongTypeModel("Rap"),];

/*Genere Data is here*/

List<SongTypeModel> onGenreSubModel = [
  SongTypeModel("Salsa"), SongTypeModel("Arebic"), SongTypeModel("Jazz"), SongTypeModel("Metal"), SongTypeModel("Electronic"),];


class _Searches_AllState extends State<Searches_All> {
  @override
  Widget build(BuildContext context) {

    bool isSelected = false;

    return SafeArea(
        child: Scaffold(
      backgroundColor: black,
      appBar: toolbar(context, " "),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16.7, right: 16.7, top: 23.3),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Search
                  Text("Search",
                      style: TextStyle(
                          color: white,
                          fontWeight: FontWeight.w900,
                          fontFamily: "CircularXXTTTrial",
                          fontStyle: FontStyle.normal,
                          fontSize: 30.0),
                      textAlign: TextAlign.left),
                  SizedBox(
                    height: 23.3,
                  ),
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
                                hintText: "Artists, Mixes, or Users",
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
                  SizedBox(
                    height: 37,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Search by country
                      Text("Search by country",
                          style: TextStyle(
                              color: white,
                              fontWeight: FontWeight.w700,
                              fontFamily: "CircularXXTTTrial",
                              fontStyle: FontStyle.normal,
                              fontSize: 15.0),
                          textAlign: TextAlign.left),
                      // View all
                      Text("View all",
                          style: TextStyle(
                              color: LightGreen,
                              fontWeight: FontWeight.w400,
                              fontFamily: "CircularXXTTTrial",
                              fontStyle: FontStyle.normal,
                              fontSize: 14.0),
                          textAlign: TextAlign.right)
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
            Container(
              height: 32,
              child: ListView.builder(
                primary: false,
                shrinkWrap: true,
                padding: EdgeInsets.all(0),
                scrollDirection: Axis.horizontal,
                itemCount: onCountryModel.length,
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
                          color: myposition == i ? white : black_282828,
                          borderRadius: BorderRadius.circular(33.3)
                      ),
                      child: // Africa
                      Padding(
                        padding:  EdgeInsets.only(left: 13.3,right: 13.3,top: 6.7,bottom: 6.7),
                        child: Text(
                            onCountryModel[i].title,
                            style:  TextStyle(
                                color:  myposition == i ? black : white,
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
            SizedBox(height: 10,),
            Container(
              height: 32,
              child: ListView.builder(
                primary: false,
                shrinkWrap: true,
                padding: EdgeInsets.all(0),
                scrollDirection: Axis.horizontal,
                itemCount: onStateModel.length,
                itemBuilder: (context, i) => Padding(
                  padding:  EdgeInsets.only(left: 12),
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        mypositionState = i;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: mypositionState == i ? white : black_282828,
                          borderRadius: BorderRadius.circular(33.3)
                      ),
                      child: // Africa
                      Padding(
                        padding:  EdgeInsets.only(left: 13.3,right: 13.3,top: 6.7,bottom: 6.7),
                        child: Text(
                            onStateModel[i].title,
                            style:  TextStyle(
                                color:  mypositionState == i ? black : white,
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
            SizedBox(
              height: 33,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.7,right: 16.7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Search by country
                  Text("Search by genre",
                      style: TextStyle(
                          color: white,
                          fontWeight: FontWeight.w700,
                          fontFamily: "CircularXXTTTrial",
                          fontStyle: FontStyle.normal,
                          fontSize: 15.0),
                      textAlign: TextAlign.left),
                  // View all
                  Text("View all",
                      style: TextStyle(
                          color: LightGreen,
                          fontWeight: FontWeight.w400,
                          fontFamily: "CircularXXTTTrial",
                          fontStyle: FontStyle.normal,
                          fontSize: 14.0),
                      textAlign: TextAlign.right)
                ],
              ),
            ),
            SizedBox(height: 10,),
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
                          color: mypositionGenre == i ? white : black_282828,
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
            SizedBox(height: 10,),
            Container(
              height: 32,
              child: ListView.builder(
                primary: false,
                shrinkWrap: true,
                padding: EdgeInsets.all(0),
                scrollDirection: Axis.horizontal,
                itemCount: onGenreSubModel.length,
                itemBuilder: (context, i) => Padding(
                  padding:  EdgeInsets.only(left: 12),
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        mypositionGenreSub = i;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: mypositionGenreSub == i ? white : black_282828,
                          borderRadius: BorderRadius.circular(33.3)
                      ),
                      child: // Africa
                      Padding(
                        padding:  EdgeInsets.only(left: 13.3,right: 13.3,top: 6.7,bottom: 6.7),
                        child: Text(
                            onGenreSubModel[i].title,
                            style:  TextStyle(
                                color:  mypositionGenreSub == i ? black : white,
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
              padding: const EdgeInsets.only(left: 16.7,right: 16.7,top: 33),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
// Top Artists
                  Text(
                      "Top Artists",
                      style: TextStyle(
                          color:  white,
                          fontWeight: FontWeight.w700,
                          fontFamily: "CircularXXTTTrial",
                          fontStyle:  FontStyle.normal,
                          fontSize: 15.0
                      ),
                      textAlign: TextAlign.left
                  ),

                  SizedBox(height: 16.7,),

                  /*Top Artist Listview is here*/
                  TopArtistListView()
                ],
              ),
            )

          ],
        ),
      ),
    ));
  }
}
