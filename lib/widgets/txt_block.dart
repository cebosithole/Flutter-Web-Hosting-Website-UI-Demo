

import 'package:flutter/material.dart';

class TextBlock extends StatelessWidget {
  String text;

  TextBlock(this.text);
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 8, top: 5),
        child: Text(
              text,
          style: TextStyle(
              //fontFamily: 'OpenSans',
              fontSize: 12.5,
              wordSpacing: 2.5,
              fontWeight: FontWeight.w300,

          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
