import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:madhouse/Model/MerchandiseModel.dart';
import 'package:madhouse/Styles/my_colors.dart';
import 'package:madhouse/Styles/my_icons.dart';
import 'package:madhouse/Styles/my_strings.dart';
import 'package:madhouse/Utils/toolbar.dart';

class ChatList extends StatefulWidget {
  @override
  _ChatListState createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {

  /*Merchandies  Data*/

  List<MerchandiseModel> onMerchandiseModel = [
    MerchandiseModel( "assets/images/subtract.png","Rushabh Patel","I am going live, join me..."),
    MerchandiseModel( "assets/images/singer.jpg","Vrusti Patel","Check this mix, Kun faya kun by A.R. ..."),
    MerchandiseModel( "assets/images/subtract.png","Aakib Khilji","Hey buddy..."),
    MerchandiseModel( "assets/images/singer.jpg","Rushabh Patel","I am going live, join me..."),
    MerchandiseModel( "assets/images/subtract.png","Vrusti Patel","Check this mix, Kun faya kun by A.R. ..."),
    MerchandiseModel( "assets/images/singer.jpg","Aakib Khilji","Hey buddy..."),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: black,
      appBar: toolbar(context, " "),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.only(left: 16.7,right: 16.7),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ), // Conversations

              Text(Conversations,
                  style: TextStyle(
                      color: white,
                      fontWeight: FontWeight.w900,
                      fontFamily: "CircularXXTTTrial",
                      fontStyle: FontStyle.normal,
                      fontSize: 30.0),
                  textAlign: TextAlign.left),

              SizedBox(
                height: 18,
              ),
              // Rectangle 1775
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(6.7)),
                    color: Color(0xff262626)),
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    SvgPicture.asset(
                      iconSearch,
                      width: 15,
                      height: 15,
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
                              fontSize: 16.0),
                          decoration: new InputDecoration(
                            isDense: true,
                            // contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 8),
                            hintText: "Search chat",
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
                height: 20,
              ),

              ListView.builder(
                primary: false,
                shrinkWrap: true,
                padding: EdgeInsets.all(0),
                itemCount: onMerchandiseModel.length,
                itemBuilder: (context, i) => Padding(
                  padding: const EdgeInsets.only(bottom: 10,top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                          child: Image.asset(onMerchandiseModel[i].image,width: 48,height: 48,fit: BoxFit.cover,)),
                      SizedBox(width: 16.7,),
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Rushabh Patel
                            Text(
                                onMerchandiseModel[i].title,
                                style: TextStyle(
                                    color:  white,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "CircularXXTTTrial",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 13.3
                                ),
                                textAlign: TextAlign.left
                            ),
                            SizedBox(height: 2,),
                            // I am going live, join me...
                            Text(
                                onMerchandiseModel[i].price,
                                style: TextStyle(
                                    color:  subtitle_grey_999999,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "CircularXXTTTrial",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 12.7
                                ),
                                textAlign: TextAlign.left
                            )
                          ],
                        ),
                      ),
                      // Ellipse 82
                      Container(
                          width: 22.333333333333332,
                          height: 22.333333333333332,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(15)
                              ),
                              color:  Color(0xff33b18a)
                          ),
                        child: // 1
                        Center(
                          child: Text(
                              "1",
                              style: TextStyle(
                                  color:  white,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "CircularXXTTTrial",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 12.7
                              ),
                              textAlign: TextAlign.center
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
