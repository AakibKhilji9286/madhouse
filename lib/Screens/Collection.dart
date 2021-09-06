import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:madhouse/Model/MoreMixModel.dart';
import 'package:madhouse/Styles/my_colors.dart';
import 'package:madhouse/Utils/toolbar.dart';


class Collection extends StatefulWidget {
  @override
  _CollectionState createState() => _CollectionState();
}

class _CollectionState extends State<Collection> {

  /*More Mixer Data*/

  List<MoreMixModel> onMoreMixerModel = [
    MoreMixModel('assets/images/singer.jpg', 'Home Party', '8 mixes and 23 songs', ''),
    MoreMixModel('assets/images/singer.jpg', 'Party Music', '31 mixes and 11 songs', ''),
    MoreMixModel('assets/images/singer.jpg', 'All For Dance', '8 mixes', ''),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: black,
          appBar: toolbar(context, "Collection"),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(height: 26.7,),

                GridView.builder(
                  primary: false,
                  shrinkWrap: true,
                  padding: EdgeInsets.all(0),
                  gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.75,
                      mainAxisSpacing: 15.0,
                      crossAxisSpacing: 15.0),
                  itemCount: onMoreMixerModel.length,
                  itemBuilder: (context, i) => Column(
                    children: [
                      Image.asset(onMoreMixerModel[i].main_image,width: double.infinity,height: 158,fit: BoxFit.cover,),
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
              ],
            ),
          ),
        ));
  }
}
