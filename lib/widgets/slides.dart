import 'package:flutter/cupertino.dart';
import 'package:getflutter/getflutter.dart';
import 'package:animated_text_kit/animated_text_kit.dart';


import 'package:flutter/material.dart';

final  imageList = [
  "assets/images/work.jpeg",
  "assets/images/mobile_design02.png",
  "assets/images/laptop_codes.png",


];

class landingSlides extends StatelessWidget{
  final inContext;

  landingSlides(this.inContext);
  Widget build(BuildContext inContext){
    return SizedBox(
      width: MediaQuery.of(inContext).size.width,

      child: Stack(
        children: [GFCarousel(
          autoPlay: true,
          viewportFraction: 1.0,
          items: imageList.map(
              (url){
                return Image.asset(
                    url,
                fit: BoxFit.fill,
                width: MediaQuery.of(inContext).size.width,);
              }
          ).toList(),
        ),
          Positioned(
            bottom: 20,
            top: 50,
            child: Container(
              alignment: Alignment.center,
              child: TypewriterAnimatedTextKit(
                isRepeatingAnimation: true,
                totalRepeatCount: 100,
                speed: Duration(microseconds: 2000),

                text: [
                  ' ',
                  ' '
                ],
                textStyle: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent
                ),
                textAlign: TextAlign.center,
                alignment: AlignmentDirectional.topStart,

              ),
            ),
          )
        ]
      ),
    );
  }
}