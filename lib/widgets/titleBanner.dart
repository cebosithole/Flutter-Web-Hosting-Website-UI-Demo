

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';

class TitleBanner extends StatelessWidget{
  String title;

  TitleBanner(this.title, );

  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(10),

      child: GFTypography(
        dividerColor: Colors.blue,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 3.5
          ),
        ),
      ),
    );
  }
}