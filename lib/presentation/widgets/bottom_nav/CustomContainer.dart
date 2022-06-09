import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
   const CustomContainer({Key? key,required this.txt}) : super(key: key);
 final txt;
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Center(
        child: Text(txt),
      ),
    );
  }
}
