import 'package:flutter/material.dart';

class CustomProductModel {
  String title , category , description , image ;
  dynamic  price;
  dynamic  id ;
  dynamic  height, width ;
  VoidCallback? onProductClick;
  CustomProductModel({
    required this.title,
    required this.height,
    required this.width,
    required this.id,
    required this.category,
    required this.price,
    required this.description,
    required this.image,
    this.onProductClick,
  });
}
