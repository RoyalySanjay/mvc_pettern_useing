import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
const normalFontSize = 16.0;
const boldFontSize = 30.0;
const bold1FontSize = 28.0;

class AppSize {
  BuildContext context;
  AppSize({required this.context});

   double get getHegiht=>MediaQuery.sizeOf(context).height;
   double  get getWidth=>MediaQuery.sizeOf(context).width;
}
