import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:madhouse/Model/MoreMixModel.dart';
import 'package:madhouse/Styles/my_colors.dart';



class DjPopGridListView extends StatefulWidget {
  @override
  _DjPopGridListViewState createState() => _DjPopGridListViewState();
}

class _DjPopGridListViewState extends State<DjPopGridListView> {

  /*More Mixer Data*/

  List<MoreMixModel> onMoreMixerModel = [
    MoreMixModel('assets/images/singer.jpg', 'DJ Joe Voundy', 'India', 'assets/images/check_blue.svg'),
    MoreMixModel('assets/images/singer.jpg', 'DJ Joe Voundy', 'Newyourk', 'assets/images/check_blue.svg'),
    MoreMixModel('assets/images/singer.jpg', 'DJ Joe Voundy', 'Dubai', ''),
    MoreMixModel('assets/images/singer.jpg', 'DJ Joe Voundy', 'Brazil', ''),
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
            childAspectRatio: 0.73,
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
                    "65,288 Followers",
                    style: const TextStyle(
                        color:  const Color(0xff808080),
                        fontWeight: FontWeight.w400,
                        fontFamily: "CircularXXTTTrial",
                        fontStyle:  FontStyle.normal,
                        fontSize: 13.3
                    ),
                    textAlign: TextAlign.left
                ),

                SizedBox(height: 5,),

                // From India
                RichText(
                    text: TextSpan(
                        children: [
                          TextSpan(
                              style: TextStyle(
                                  color:  EdTxtBg,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "CircularXXTTTrial",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 13.3
                              ),
                              text: "From "),
                          TextSpan(
                              style: const TextStyle(
                                  color:  light_grey_cccccc,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "CircularXXTTTrial",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 13.3
                              ),
                              text:  onMoreMixerModel[i].hours)
                        ]
                    )
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
