import 'package:flutter/material.dart';

import '../colors.dart';

class AppButtonStyles {
  ButtonStyle appButton({
    Color bgColor = appButtonColor,

   }) =>
      ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        foregroundColor: foregroundColor,
            shape:  RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )
      );
}