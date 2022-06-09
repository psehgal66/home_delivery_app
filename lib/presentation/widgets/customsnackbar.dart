import 'package:flutter/material.dart';
import 'package:home_delivery_app/constants/constants.dart';

class CustomSnackbar{
  static snackBar({required BuildContext context, required String data, required Color color}){
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar( content: Padding(
          padding: EdgeInsets.only(left: 130.0),
          child: Text(data)
      ),
        backgroundColor: color,
        behavior: SnackBarBehavior.floating,

        ));
  }
}