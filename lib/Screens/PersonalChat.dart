import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:madhouse/Styles/my_colors.dart';
import 'package:madhouse/Styles/my_icons.dart';
import 'package:madhouse/Utils/toolbar_personal_chat.dart';

class PersonalChat extends StatefulWidget {
  @override
  _PersonalChatState createState() => _PersonalChatState();
}

class _PersonalChatState extends State<PersonalChat> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: black, // navigation bar color
      statusBarColor: black_282828, // status bar color
      statusBarIconBrightness: Brightness.light, // status bar icons' color
      systemNavigationBarIconBrightness:
          Brightness.light, //navigation bar icons' color
    ));

    return SafeArea(
        child: Scaffold(
      backgroundColor: black,
      appBar: toolbar_personal_chat(context, "John Doe", "john25"),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 16.7,right: 16.7),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 23,
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      decoration: BoxDecoration(
                          color: black_282828,
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.all(6.7),
                        child: Text("Today",
                            style: const TextStyle(
                                color: const Color(0xffcccccc),
                                fontWeight: FontWeight.w400,
                                fontFamily: "CircularXXTTTrial",
                                fontStyle: FontStyle.normal,
                                fontSize: 11.7),
                            textAlign: TextAlign.center),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 26.7,
                  ),
                  Container(
                    decoration: (BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(0),
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5)),
                      color: black_282828
                    )),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Hello, how are you...
                          Text(
                              "Hello, how are you...",
                              style: TextStyle(
                                  color:  white,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "CircularXXTTTrial",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 15.0
                              ),
                              textAlign: TextAlign.left
                          ),
                          SizedBox(width: 10,),

                          Text("12:32",
                          style: TextStyle(
                              color:  EdTxtBg,
                              fontWeight: FontWeight.w400,
                              fontFamily: "CircularXXTTTrial",
                              fontStyle:  FontStyle.normal,
                              fontSize: 11.7
                          ),)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    decoration: (BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: black_282828
                    )),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Hello, how are you...
                          Text(
                              "are you there...",
                              style: TextStyle(
                                  color:  white,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "CircularXXTTTrial",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 15.0
                              ),
                              textAlign: TextAlign.left
                          ),
                          SizedBox(width: 10,),

                          Text("12:32",
                            style: TextStyle(
                                color:  EdTxtBg,
                                fontWeight: FontWeight.w400,
                                fontFamily: "CircularXXTTTrial",
                                fontStyle:  FontStyle.normal,
                                fontSize: 11.7
                            ),)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      decoration: (BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(0),
                              bottomRight: Radius.circular(5),
                              bottomLeft: Radius.circular(5)),
                          color: English_Green_33b18a
                      )),
                      child: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // Hello, how are you...
                            Text(
                                "Hello, i am fine.",
                                style: TextStyle(
                                    color:  white,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "CircularXXTTTrial",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 15.0
                                ),
                                textAlign: TextAlign.left
                            ),
                            SizedBox(width: 10,),

                            Opacity(
                              opacity: 0.699999988079071,
                              child: Text("12:35",
                                style: TextStyle(
                                    color:  white,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "CircularXXTTTrial",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 11.7
                                ),),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      decoration: (BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: English_Green_33b18a
                      )),
                      child: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // Hello, how are you...
                            Text(
                                "how about you...",
                                style: TextStyle(
                                    color:  white,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "CircularXXTTTrial",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 15.0
                                ),
                                textAlign: TextAlign.left
                            ),
                            SizedBox(width: 10,),

                            Opacity(
                              opacity: 0.699999988079071,
                              child: Text("12:35",
                                style: TextStyle(
                                    color:  white,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "CircularXXTTTrial",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 11.7
                                ),),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      decoration: (BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: English_Green_33b18a
                      )),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:6.7,top: 6.7,bottom: 10,right: 25),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(4.5),
                                    child: Image.asset("assets/images/singer.jpg",width: 80,height: 80,fit: BoxFit.cover,)),
                                SizedBox(width: 8,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Kun faya kun
                                    Text(
                                        "Kun faya kun",
                                        style: const TextStyle(
                                            color:  white,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "CircularXXTTTrial",
                                            fontStyle:  FontStyle.normal,
                                            fontSize: 15.0
                                        ),
                                        textAlign: TextAlign.left
                                    ),
                                    SizedBox(height: 3,),
                                    // by AR Rehman
                                    Text(
                                        "by AR Rehman",
                                        style: TextStyle(
                                            color:  white,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "CircularXXTTTrial",
                                            fontStyle:  FontStyle.normal,
                                            fontSize: 11.7
                                        ),
                                        textAlign: TextAlign.left
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 5,),
                          Padding(
                            padding: EdgeInsets.only(left: 13,bottom: 13,right: 13),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // Hello, how are you...
                                Text(
                                    "how about you...",
                                    style: TextStyle(
                                        color:  white,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "CircularXXTTTrial",
                                        fontStyle:  FontStyle.normal,
                                        fontSize: 15.0
                                    ),
                                    textAlign: TextAlign.left
                                ),


                                Opacity(
                                  opacity: 0.699999988079071,
                                  child: Text("12:35",
                                    style: TextStyle(
                                        color:  white,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "CircularXXTTTrial",
                                        fontStyle:  FontStyle.normal,
                                        fontSize: 11.7
                                    ),),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    decoration: (BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(0),
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5)),
                        color: black_282828
                    )),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Hello, how are you...
                          Text(
                              "Hello, how are you...",
                              style: TextStyle(
                                  color:  white,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "CircularXXTTTrial",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 15.0
                              ),
                              textAlign: TextAlign.left
                          ),
                          SizedBox(width: 10,),

                          Text("12:32",
                            style: TextStyle(
                                color:  EdTxtBg,
                                fontWeight: FontWeight.w400,
                                fontFamily: "CircularXXTTTrial",
                                fontStyle:  FontStyle.normal,
                                fontSize: 11.7
                            ),)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    decoration: (BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: black_282828
                    )),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Hello, how are you...
                          Text(
                              "are you there...",
                              style: TextStyle(
                                  color:  white,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "CircularXXTTTrial",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 15.0
                              ),
                              textAlign: TextAlign.left
                          ),
                          SizedBox(width: 10,),

                          Text("12:32",
                            style: TextStyle(
                                color:  EdTxtBg,
                                fontWeight: FontWeight.w400,
                                fontFamily: "CircularXXTTTrial",
                                fontStyle:  FontStyle.normal,
                                fontSize: 11.7
                            ),)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      decoration: (BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(0),
                              bottomRight: Radius.circular(5),
                              bottomLeft: Radius.circular(5)),
                          color: English_Green_33b18a
                      )),
                      child: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // Hello, how are you...
                            Text(
                                "Hello, i am fine.",
                                style: TextStyle(
                                    color:  white,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "CircularXXTTTrial",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 15.0
                                ),
                                textAlign: TextAlign.left
                            ),
                            SizedBox(width: 10,),

                            Opacity(
                              opacity: 0.699999988079071,
                              child: Text("12:35",
                                style: TextStyle(
                                    color:  white,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "CircularXXTTTrial",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 11.7
                                ),),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      decoration: (BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: English_Green_33b18a
                      )),
                      child: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // Hello, how are you...
                            Text(
                                "how about you...",
                                style: TextStyle(
                                    color:  white,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "CircularXXTTTrial",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 15.0
                                ),
                                textAlign: TextAlign.left
                            ),
                            SizedBox(width: 10,),

                            Opacity(
                              opacity: 0.699999988079071,
                              child: Text("12:35",
                                style: TextStyle(
                                    color:  white,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "CircularXXTTTrial",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 11.7
                                ),),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      decoration: (BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: English_Green_33b18a
                      )),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:6.7,top: 6.7,bottom: 10,right: 25),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(4.5),
                                    child: Image.asset("assets/images/singer.jpg",width: 80,height: 80,fit: BoxFit.cover,)),
                                SizedBox(width: 8,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Kun faya kun
                                    Text(
                                        "Kun faya kun",
                                        style: const TextStyle(
                                            color:  white,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "CircularXXTTTrial",
                                            fontStyle:  FontStyle.normal,
                                            fontSize: 15.0
                                        ),
                                        textAlign: TextAlign.left
                                    ),
                                    SizedBox(height: 3,),
                                    // by AR Rehman
                                    Text(
                                        "by AR Rehman",
                                        style: TextStyle(
                                            color:  white,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "CircularXXTTTrial",
                                            fontStyle:  FontStyle.normal,
                                            fontSize: 11.7
                                        ),
                                        textAlign: TextAlign.left
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 5,),
                          Padding(
                            padding: EdgeInsets.only(left: 13,bottom: 13,right: 13),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // Hello, how are you...
                                Text(
                                    "how about you...",
                                    style: TextStyle(
                                        color:  white,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "CircularXXTTTrial",
                                        fontStyle:  FontStyle.normal,
                                        fontSize: 15.0
                                    ),
                                    textAlign: TextAlign.left
                                ),


                                Opacity(
                                  opacity: 0.699999988079071,
                                  child: Text("12:35",
                                    style: TextStyle(
                                        color:  white,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "CircularXXTTTrial",
                                        fontStyle:  FontStyle.normal,
                                        fontSize: 11.7
                                    ),),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),

          /*Bottom Layout Edit text and send button*/

          new Positioned(
              child: new Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: // Rectangle 2531
                      Container(
                    decoration: BoxDecoration(color: Color(0xff1d1d1d)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 16.7, right: 16.7, top: 21.7, bottom: 21.7),
                      child: Row(
                        children: [
                          // Rectangle 1697
                          Expanded(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(33)),
                                  color: white),
                              child: new TextField(
                                style: TextStyle(
                                    color: black,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "CircularXXTTTrial",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 14.0),
                                decoration: new InputDecoration(
                                  isDense: true,
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 15),
                                  hintText: "Type a message here... ",
                                  hintStyle: TextStyle(
                                      color: EdTxtBg,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "CircularXXTTTrial",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14.0),
                                  border: InputBorder.none,

                                  labelStyle: new TextStyle(
                                      color: black,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "CircularXXTTTrial",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14.0),
                                  // hintStyle: TextStyle(
                                  //     fontSize: 18.0, color: Colors.black87,fontFamily: 'Poppins',fontWeight: FontWeight.w600
                                  // ),
                                ),
                                keyboardType: TextInputType.text,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 11.7,
                          ),
                          SvgPicture.asset(
                            iconSend,
                            width: 43.3,
                            height: 43.3,
                          )
                        ],
                      ),
                    ),
                  ))),
        ],
      ),
    ));
  }
}
