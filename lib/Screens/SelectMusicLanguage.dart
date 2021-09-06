import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:madhouse/Layouts/Next_White_Button.dart';
import 'package:madhouse/Model/SongTypeModel.dart';
import 'package:madhouse/Styles/my_colors.dart';
import 'package:madhouse/Utilities/Constant.dart';
import 'package:madhouse/Utils/toolbar.dart';

class SelectMusicLanguage extends StatefulWidget {
  @override
  _SelectMusicLanguageState createState() => _SelectMusicLanguageState();
}

class _SelectMusicLanguageState extends State<SelectMusicLanguage> {
  List<SongTypeModel> onSongTypeModel = [];
  List<SongTypeModel> selectedList = [];

  @override
  void initState() {
    onSongTypeModel.clear();
    onSongTypeModel.add(SongTypeModel("English"));
    onSongTypeModel.add(SongTypeModel("Gujarati"));
    onSongTypeModel.add(SongTypeModel("Marathi"));
    onSongTypeModel.add(SongTypeModel("Spanish"));
    onSongTypeModel.add(SongTypeModel("Hindi"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: black,
      appBar: toolbar(context, "Creat Account"),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 23,
                  ),
                  // Your mobile number ?
                  Text(
                    'What music do you like?',
                    style: TextStyle(
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                        fontFamily: "CircularXXTTTrial",
                        fontStyle: FontStyle.normal,
                        fontSize: 30.0),
                  ),

                  SizedBox(
                    height: 6.7,
                  ),

                  ListView.builder(
                    primary: false,
                    shrinkWrap: true,
                    padding: EdgeInsets.all(0),
                    itemCount: onSongTypeModel.length,
                    itemBuilder: (context, i) => GestureDetector(
                      onTap: () {
                        setState(
                          () {
                            if (selectedList.contains(onSongTypeModel[i])) {
                              selectedList.remove(onSongTypeModel[i]);
                            } else {
                              selectedList.add(onSongTypeModel[i]);
                            }
                          },
                        );
                        print(selectedList.length);
                        print(onSongTypeModel.length);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0),
                            color:selectedList.contains(onSongTypeModel[i]) ? white:black),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 17.7, right: 17.7, top: 14.3, bottom: 14.3),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // English
                              Text(onSongTypeModel[i].title,
                                  style: TextStyle(
                                      color:selectedList.contains(onSongTypeModel[i]) ? black:white,
                                      fontWeight: FontWeight.w900,
                                      fontFamily: boldFont,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 30.0),
                                  textAlign: TextAlign.left),

                              // Ellipse 36
                              Container(
                                width: 22,
                                height: 22,
                                decoration: BoxDecoration(
                                  color: selectedList.contains(onSongTypeModel[i]) ?green:black,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Icon(
                                  Icons.check,
                                  size: 15,
                                  color: black,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Next_White_Button(
              onChanged: (value) {
                setState(() {
                  // Navigator.push(context, MaterialPageRoute(
                  //   builder: (context) => FullName(),
                  // ));
                });
              },
            )
          ],
        ),
      ),

      // display DatePicker floating action button
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _showDatePicker,
      //   tooltip: 'Show DatePicker',
      //   child: Icon(Icons.date_range),
      // ),
    ));
  }
}
