import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MerchandiseModel{

  final String image;
  final String title;
  final String price;

  MerchandiseModel(this.image,this.title,this.price);
}

   List<MerchandiseModel> modelArraylist = [];