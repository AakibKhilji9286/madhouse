import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_color_picker/image_color_picker.dart';


class TEst extends StatelessWidget {
  Color face = Color(0xffa8a8a8);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Image from assets"),
          ),
          body: Column (
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:<Widget>[
                      new Image.asset('assets/images/singer.jpg',
                        color: face, colorBlendMode:BlendMode.modulate ,
                        fit:BoxFit.cover,
                        height: 50,
                        width: 50,
                      ),


                      new Image.asset('assets/images/singer.jpg',
                        color: face, colorBlendMode: BlendMode.modulate,
                        fit:BoxFit.cover,
                        height: 200,
                        width: 200,
                      ),
                    ]),
              ])),
    );
  }
}
