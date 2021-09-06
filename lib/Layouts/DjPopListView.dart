import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:madhouse/Model/DjPopModel.dart';
import 'package:madhouse/Model/MerchandiseModel.dart';
import 'package:madhouse/Model/MoreMixModel.dart';
import 'package:madhouse/Styles/my_colors.dart';
import 'package:madhouse/Styles/my_icons.dart';



class DjPopListView extends StatefulWidget {
  @override
  _DjPopListViewState createState() => _DjPopListViewState();
}

class _DjPopListViewState extends State<DjPopListView> {

  bool _isShown = false;

  /*More Mixer Data*/

  List<DjPopModel> onMerchandiseModel = [
    DjPopModel('assets/images/singer.jpg', 'The lost files', 'DJ Alvin',"1" ),
    DjPopModel('assets/images/singer.jpg', 'Rockstar metro mix', 'DJ Alvin',"1" ),
    DjPopModel('assets/images/singer.jpg', 'Get the first tip', 'DJ Alvin',"2" ),
    DjPopModel('assets/images/singer.jpg', 'Most of the lost', 'DJ Alvin', "2"),
    DjPopModel('assets/images/singer.jpg', 'Rockstar metro mix', 'DJ Alvin', "2"),

  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: black,
      child: ListView.builder(
        primary: false,
        shrinkWrap: true,
        padding: EdgeInsets.all(0),
        itemCount: onMerchandiseModel.length,
        itemBuilder: (context, i) => Padding(
          padding: const EdgeInsets.only(bottom: 14.3),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(onMerchandiseModel[i].image,width: 44,height: 44,fit: BoxFit.cover,),

              SizedBox(width: 11.3,),

              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // The lost files
                    Text(
                        onMerchandiseModel[i].title,
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
                    // DJ Alvin
                    Text(
                        onMerchandiseModel[i].price,
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

              // SvgPicture.asset(iconplay_with_white_circle,width: 30,height: 30,)

              onMerchandiseModel[i].type=='1'?Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isShown = !_isShown;
                      });
                    },
                    child: Container(
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(5)
                          ),
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [const Color(0xff409ffb), const Color(0xff3080ce)])
                      ),
                      child: // Follow
                      Padding(
                        padding: const EdgeInsets.only(top: 6.7,bottom: 6.7),
                        child: Text(
                            "Follow",
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
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isShown = !_isShown;
                      });
                    },
                    child: Visibility(
                      visible: _isShown,
                      child: Container(
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.circular(5)
                            ),
                            border: Border.all(
                                color: EdTxtBg,
                                width: 1
                            ),
                            color: const Color(0xff121212)
                        ),
                        child: // Follow
                        Padding(
                          padding: const EdgeInsets.only(top: 6.7,bottom: 6.7),
                          child: Text(
                              "Following",
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
                    ),
                  ),

                ],
              ):SvgPicture.asset(iconplay_with_white_circle,width: 30,height: 30,)
            ],
          ),
        ),
      ) ,
    );
  }
}
