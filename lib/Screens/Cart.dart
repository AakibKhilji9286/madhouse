import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:madhouse/Model/MerchandiseModel.dart';
import 'package:madhouse/Styles/my_colors.dart';
import 'package:madhouse/Styles/my_icons.dart';
import 'package:madhouse/Styles/my_strings.dart';
import 'package:madhouse/Utils/toolbar.dart';


class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {

  List<MerchandiseModel> onMerchandiseModel = [
    MerchandiseModel( "assets/images/singer.jpg","Get the lost files","\$34"),
    MerchandiseModel( "assets/images/singer.jpg","Mix Package","\$50"),
    MerchandiseModel( "assets/images/singer.jpg","Tuje rula dia ho","\$25"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: black,
          appBar: toolbar(context, "Cart"),
          body: Column(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.7,right: 16.7),
                  child: Column(
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
                          padding: const EdgeInsets.only(bottom: 14.3),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(onMerchandiseModel[i].image,width: 73,height: 73,fit: BoxFit.cover,),
                              SizedBox(width: 11.3,),
                              Expanded(
                                flex: 1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    // Get the lost files
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
                                    // By A.R. Rehman
                                    Text(
                                        "By A.R. Rehman",
                                        style: TextStyle(
                                            color: light_grey_cccccc,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "CircularXXTTTrial",
                                            fontStyle:  FontStyle.normal,
                                            fontSize: 12.3
                                        ),
                                        textAlign: TextAlign.left
                                    ),
                                    SizedBox(height: 6.7,),
                                    // 3h 15min
                                    Text(
                                        "3h 15min",
                                        style: TextStyle(
                                            color:  light_grey_cccccc,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "CircularXXTTTrial",
                                            fontStyle:  FontStyle.normal,
                                            fontSize: 12.3
                                        ),
                                        textAlign: TextAlign.left
                                    )
                                  ],
                                ),
                              ),
                              // $ 34
                              Text(
                                  onMerchandiseModel[i].price,
                                  style: TextStyle(
                                      color: white,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "SFProDisplay",
                                      fontStyle:  FontStyle.normal,
                                      fontSize: 14.0
                                  ),
                                  textAlign: TextAlign.right
                              ),

                              SizedBox(width: 18,),

                              SvgPicture.asset(iconDelete,width: 25,height: 25,)

                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 18,),

                      Container(
                        margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                        height: 1,
                        color: viewLine,
                      ),

                      SizedBox(height: 22,),

                      // Wallet
                      Text(
                          "Wallet",
                          style: const TextStyle(
                              color:  const Color(0xffffffff),
                              fontWeight: FontWeight.w700,
                              fontFamily: "CircularXXTTTrial",
                              fontStyle:  FontStyle.normal,
                              fontSize: 15.0
                          ),
                          textAlign: TextAlign.left
                      ),

                      SizedBox(height: 13.7,),

                      Row(
                        children: [
                          SvgPicture.asset(iconCheck,width: 22,height: 22,),
                          SizedBox(width: 10,),
                          // Use Wallet amonut
                          Expanded(
                            flex: 1,
                            child: Text(
                                "Use Wallet amonut",
                                style: const TextStyle(
                                    color:  const Color(0xffffffff),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "CircularXXTTTrial",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 15.0
                                ),
                                textAlign: TextAlign.left
                            ),
                          ),

                          // Avbl. bal. $45
                         Text("Avbl. bal. \$45",
                         style: TextStyle(
                             color:  EdTxtBg,
                             fontWeight: FontWeight.w400,
                             fontFamily: "CircularXXTTTrial",
                             fontStyle:  FontStyle.normal,
                             fontSize: 15.0
                         ),)
                        ],
                      )
                    ],
                  ),
                ),
              ),

              Container(
                color: English_Green_33b18a,
                child: Padding(
                  padding: const EdgeInsets.only(top: 21,left: 21,bottom: 18,right: 16.7),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // $500
                          Text(
                              "\$500",
                              style:  TextStyle(
                                  color:  white,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "SFProDisplay",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 25.0
                              ),
                              textAlign: TextAlign.left
                          ),
                          SizedBox(height: 3,),
                          // TOTAL
                          Text(
                              "TOTAL",
                              style: TextStyle(
                                  color:  const Color(0xb2ffffff),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "CircularXXTTTrial",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 12.7
                              ),
                              textAlign: TextAlign.left
                          )
                        ],
                      ),

                      ElevatedButton(
                          child: Padding(
                            padding: EdgeInsets.only(left: 70,right: 70),
                            child: Text("Pay Now",
                                style:TextStyle(
                                    color:   txt_color,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "CircularXXTTTrial-Bold",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 15.0)),
                          ),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            onPrimary: txt_color,
                            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 18),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0), side: BorderSide(color: Colors.white,width: 0),),
                          )
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
