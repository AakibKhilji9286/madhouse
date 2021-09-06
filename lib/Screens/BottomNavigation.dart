import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:madhouse/Screens/CollectionDetail.dart';
import 'package:madhouse/Screens/Home.dart';
import 'package:madhouse/Screens/Searches_All.dart';
import 'package:madhouse/Styles/my_colors.dart';
import 'package:madhouse/Styles/my_icons.dart';


class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  int _currentIndex = 0;
  final tabs =  [
    new Container(
      child: Home(),
    ),
    new Container(
      child: Searches_All(),
    ),
    new Container(
      child: Home(),
    ),
    new Container(
      child: Home(),
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: black_282828,
        selectedItemColor: white,
        unselectedItemColor: light_grey_cccccc,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(iconHomeUnselected,width: 20,height: 20,),
              activeIcon: SvgPicture.asset(iconHome,width: 20,height: 20),
              label: "Home",
              backgroundColor: black
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(iconSearchGrey,width: 20,height: 20,),
              activeIcon: SvgPicture.asset(iconSearchGrey,width: 20,height: 20,color: white,),
              label: "Search",
              backgroundColor: black
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(iconSubscribe,width: 20,height: 20,),
              activeIcon: SvgPicture.asset(iconSubscribe,width: 20,height: 20,color: white,),
              label: "Subscribe",
              backgroundColor: black
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(iconAccount,width: 20,height: 20,),
              activeIcon: SvgPicture.asset(iconAccount,width: 20,height: 20,color: white,),
              label: "Account",
              backgroundColor: black
          ),
        ],
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),

    );
  }
}
