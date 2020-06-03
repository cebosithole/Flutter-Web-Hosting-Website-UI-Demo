
import 'package:flutter/material.dart';

AppBar SiteBar()=> AppBar(
  backgroundColor: Colors.white,
  elevation: 5,

  title: Text(
      '[GH]',
  style: TextStyle(
    letterSpacing: 3.5,
    fontWeight: FontWeight.bold,
     color: Colors.black
  ),),

  actions: <Widget>[
    IconButton(
      icon: Icon(
          Icons.menu,
      color: Colors.black,),
      onPressed: (){},
    )
  ],
);
