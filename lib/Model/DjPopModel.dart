import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DjPopModel{

  final String image;
  final String title;
  final String price;
  final String type;

  DjPopModel(this.image,this.title,this.price,this.type);
}

   List<DjPopModel> modelArraylist = [];