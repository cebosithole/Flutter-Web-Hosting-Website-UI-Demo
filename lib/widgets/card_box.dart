import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {

  String title;
  String text;
  var image;

  TextBox({this.title, this.text, this.image});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.asset('assets/images/$image',
            fit: BoxFit.cover,
          height: 50,
          width: 50,),

          Padding(
            padding: const EdgeInsets.only( top: 8.0, bottom: 3),
            child: Text(title,
              style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
              textAlign: TextAlign.center,),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(text,
              style: TextStyle(
                  fontFamily: 'OpenSans'
              ),
              textAlign: TextAlign.center,),

          )
        ],
      ),
    );
  }
}