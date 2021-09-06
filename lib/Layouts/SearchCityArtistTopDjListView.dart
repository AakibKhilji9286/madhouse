import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:madhouse/Model/MoreMixModel.dart';
import 'package:madhouse/Styles/my_colors.dart';



class SearchCityArtistTopDjListView extends StatefulWidget {
  @override
  _SearchCityArtistTopDjListViewState createState() => _SearchCityArtistTopDjListViewState();
}

class _SearchCityArtistTopDjListViewState extends State<SearchCityArtistTopDjListView> {

  /*More Mixer Data*/

  List<MoreMixModel> onMoreMixerModel = [
    MoreMixModel('assets/images/singer.jpg', 'DJ Joe Voundy', '65,288 Followers', 'assets/images/check_blue.svg'),
    MoreMixModel('assets/images/singer.jpg', 'DJ Joe Voundy', '12.5 M followers', 'assets/images/check_blue.svg'),
    MoreMixModel('assets/images/singer.jpg', 'DJ Joe Voundy', '65,288 Followers', ''),
    MoreMixModel('assets/images/singer.jpg', 'DJ Joe Voundy', '12.5 M followers', ''),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: black,
      child:   GridView.builder(
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
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // DJ Joe Voundy
                Row(
                  children: [
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

                    SizedBox(width: 10,),
                    SvgPicture.asset(onMoreMixerModel[i].lock,width: 15,height: 15,)
                  ],
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
            )
          ],
        ),
      ),
    );
  }
}
