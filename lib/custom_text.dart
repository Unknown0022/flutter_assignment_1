import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String text = '';

  CustomText(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
