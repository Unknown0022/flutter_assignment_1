import 'package:flutter/material.dart';
import 'dart:math';

import './custom_text.dart';

class TextControl extends StatefulWidget {
  @override
  _TextControlState createState() => _TextControlState();
}

class _TextControlState extends State<TextControl> {
  String text = 'Random text';

  void setText() {
    var random = new Random();
    int randomInt = random.nextInt(100);

    setState(() {
      this.text = 'Testing again...' + randomInt.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(this.text),
        FlatButton(
          child: CustomText('Change!'),
          onPressed: setText,
        )
      ],
    );
  }
}
