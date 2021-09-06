import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:madhouse/Screens/AddToSpotifyList.dart';
import 'package:madhouse/Screens/Artist_1.dart';
import 'package:madhouse/Screens/BuyMix.dart';
import 'package:madhouse/Screens/BuyMixList.dart';
import 'package:madhouse/Screens/Cart.dart';
import 'package:madhouse/Screens/ChatList.dart';
import 'package:madhouse/Screens/Collection.dart';
import 'package:madhouse/Screens/CollectionDetail.dart';
import 'package:madhouse/Screens/ConnectAppleMusic.dart';
import 'package:madhouse/Screens/ConnectFacebook.dart';
import 'package:madhouse/Screens/ConnectSpotify.dart';
import 'package:madhouse/Screens/DOB.dart';
import 'package:madhouse/Screens/EnterMobileNumber.dart';
import 'package:madhouse/Screens/FollowFriends.dart';
import 'package:madhouse/Screens/FullName.dart';
import 'package:madhouse/Screens/Gender.dart';
import 'package:madhouse/Screens/Login.dart';
import 'package:madhouse/Screens/OTP.dart';
import 'package:madhouse/Screens/Password.dart';
import 'package:madhouse/Screens/Permission.dart';
import 'package:madhouse/Screens/PersonalChat.dart';
import 'package:madhouse/Screens/SearchActiveUser.dart';
import 'package:madhouse/Screens/SearchCity.dart';
import 'package:madhouse/Screens/SearchCityArtistDjPopListView.dart';
import 'package:madhouse/Screens/Searches_All.dart';
import 'package:madhouse/Screens/TEst.dart';

import 'BottomNavigation.dart';
import 'SearchCityArtist.dart';
import 'SearchCityArtistDjPop.dart';
import 'SearchCityArtistTopDj.dart';
import 'Welcome.dart';


class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Artist_1(),
                      ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("Artist_1 Screen",style: TextStyle(color: Colors.black87,fontSize: 16,fontWeight: FontWeight.w600),),
                    ),
                  ),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Welcome(),
                      ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("Welcome Screen",style: TextStyle(color: Colors.black87,fontSize: 16,fontWeight: FontWeight.w600),),
                    ),
                  ),


                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => EnterMobileNumber(),
                      ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("EnterMobileNumber Screen",style: TextStyle(color: Colors.black87,fontSize: 16,fontWeight: FontWeight.w600),),
                    ),
                  ),


                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Login(),
                      ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("Login Screen",style: TextStyle(color: Colors.black87,fontSize: 16,fontWeight: FontWeight.w600),),
                    ),
                  ),


                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => OTP(),
                      ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("OTP Screen",style: TextStyle(color: Colors.black87,fontSize: 16,fontWeight: FontWeight.w600),),
                    ),
                  ),


                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Password(),
                      ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("Password Screen",style: TextStyle(color: Colors.black87,fontSize: 16,fontWeight: FontWeight.w600),),
                    ),
                  ),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => FullName(),
                      ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("FullName Screen",style: TextStyle(color: Colors.black87,fontSize: 16,fontWeight: FontWeight.w600),),
                    ),
                  ),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Gender(),
                      ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("Gender Screen",style: TextStyle(color: Colors.black87,fontSize: 16,fontWeight: FontWeight.w600),),
                    ),
                  ),


                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => DOB(),
                      ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("DOB Screen",style: TextStyle(color: Colors.black87,fontSize: 16,fontWeight: FontWeight.w600),),
                    ),
                  ),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => ConnectFacebook(),
                      ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("ConnectFacebook Screen",style: TextStyle(color: Colors.black87,fontSize: 16,fontWeight: FontWeight.w600),),
                    ),
                  ),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => FollowFriends(),
                      ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("FollowFriends Screen",style: TextStyle(color: Colors.black87,fontSize: 16,fontWeight: FontWeight.w600),),
                    ),
                  ),


                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Permission(),
                      ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("Permission Screen",style: TextStyle(color: Colors.black87,fontSize: 16,fontWeight: FontWeight.w600),),
                    ),
                  ),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Collection(),
                      ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("Collection Screen",style: TextStyle(color: Colors.black87,fontSize: 16,fontWeight: FontWeight.w600),),
                    ),
                  ),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => CollectionDetail(),
                      ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("CollectionDetail Screen",style: TextStyle(color: Colors.black87,fontSize: 16,fontWeight: FontWeight.w600),),
                    ),
                  ),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => ConnectSpotify(),
                      ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("ConnectSpotify Screen",style: TextStyle(color: Colors.black87,fontSize: 16,fontWeight: FontWeight.w600),),
                    ),
                  ),


                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => ConnectAppleMusic(),
                      ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("ConnectAppleMusic Screen",style: TextStyle(color: Colors.black87,fontSize: 16,fontWeight: FontWeight.w600),),
                    ),
                  ),


                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => AddToSpotifyList(),
                      ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("AddToSpotifyList Screen",style: TextStyle(color: Colors.black87,fontSize: 16,fontWeight: FontWeight.w600),),
                    ),
                  ),


                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => ChatList(),
                      ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("ChatList Screen",style: TextStyle(color: Colors.black87,fontSize: 16,fontWeight: FontWeight.w600),),
                    ),
                  ),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => BuyMix(),
                      ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("BuyMix Screen",style: TextStyle(color: Colors.black87,fontSize: 16,fontWeight: FontWeight.w600),),
                    ),
                  ),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => BuyMixList(),
                      ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("BuyMixList Screen",style: TextStyle(color: Colors.black87,fontSize: 16,fontWeight: FontWeight.w600),),
                    ),
                  ),


                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Cart(),
                      ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("Cart Screen",style: TextStyle(color: Colors.black87,fontSize: 16,fontWeight: FontWeight.w600),),
                    ),
                  ),


                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => BottomNavigation(),
                      ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("BottomNavigation Screen",style: TextStyle(color: Colors.black87,fontSize: 16,fontWeight: FontWeight.w600),),
                    ),
                  ),


                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => PersonalChat(),
                      ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("PersonalChat Screen",style: TextStyle(color: Colors.black87,fontSize: 16,fontWeight: FontWeight.w600),),
                    ),
                  ),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => SearchCity(),
                      ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("SearchCity Screen",style: TextStyle(color: Colors.black87,fontSize: 16,fontWeight: FontWeight.w600),),
                    ),
                  ),


                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Searches_All(),
                      ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("Searches_All Screen",style: TextStyle(color: Colors.black87,fontSize: 16,fontWeight: FontWeight.w600),),
                    ),
                  ),


                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => SearchCityArtist(),
                      ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("SearchCityArtist Screen",style: TextStyle(color: Colors.black87,fontSize: 16,fontWeight: FontWeight.w600),),
                    ),
                  ),


                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => SearchCityArtistTopDj(),
                      ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("SearchCityArtistTopDj Screen",style: TextStyle(color: Colors.black87,fontSize: 16,fontWeight: FontWeight.w600),),
                    ),
                  ),


                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => SearchCityArtistDjPop(),
                      ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("SearchCityArtistDjPop Screen",style: TextStyle(color: Colors.black87,fontSize: 16,fontWeight: FontWeight.w600),),
                    ),
                  ),


                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => SearchCityArtistDjPopListView(),
                      ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("SearchCityArtistDjPopListView Screen",style: TextStyle(color: Colors.black87,fontSize: 16,fontWeight: FontWeight.w600),),
                    ),
                  ),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => SearchActiveUser(),
                      ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("SearchActiveUser Screen",style: TextStyle(color: Colors.black87,fontSize: 16,fontWeight: FontWeight.w600),),
                    ),
                  ),


                ],
              ),
            ),
          ),
        ));
  }
}
