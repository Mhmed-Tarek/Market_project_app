import 'package:flutter/material.dart';

class CustomButtonModel {
  String title;
  VoidCallback? onButtonClick;
  CustomButtonModel({
    required this.title,
    this.onButtonClick,
  });
}
