import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:madhouse/Model/MerchandiseModel.dart';
import 'package:madhouse/Model/TopArtistModel.dart';
import 'package:madhouse/Styles/my_colors.dart';

class TopArtistListView extends StatefulWidget {
  @override
  _DjRushListViewState createState() => _DjRushListViewState();
}

class _DjRushListViewState extends State<TopArtistListView> {

  /*Dj Rush Listview Data is here*/
  List<TopArtistModel> onTopArtistModel = [
    TopArtistModel( "assets/images/singer.jpg","Darshan R.."),
    TopArtistModel( "assets/images/singer.jpg","Darshan R.."),
    TopArtistModel( "assets/images/singer.jpg","Darshan R.."),
    TopArtistModel( "assets/images/singer.jpg","Darshan R.."),
    TopArtistModel( "assets/images/singer.jpg","Darshan R.."),
    TopArtistModel( "assets/images/singer.jpg","Darshan R.."),
    TopArtistModel( "assets/images/singer.jpg","Darshan R.."),
    TopArtistModel( "assets/images/singer.jpg","Darshan R.."),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: black,
      child: GridView.builder(
        primary: false,
        shrinkWrap: true,
        padding: EdgeInsets.all(0),
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio: 0.70,
            mainAxisSpacing: 15.0,
            crossAxisSpacing: 15.0),
        itemCount: onTopArtistModel.length,
        itemBuilder: (context, i) => Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
                child: Image.asset(onTopArtistModel[i].image,width: double.infinity,height: 71.7,fit: BoxFit.cover,)),

            SizedBox(height: 10,),
            // Darshan R..
            Text(
                onTopArtistModel[i].title,
                style: TextStyle(
                    color: white,
                    fontWeight: FontWeight.w300,
                    fontFamily: "CircularXXTTTrial",
                    fontStyle:  FontStyle.normal,
                    fontSize: 14.0
                ),
                textAlign: TextAlign.center
            )
          ],
        ),
      ),
    );
  }
}
