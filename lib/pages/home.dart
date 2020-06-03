import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:globalhost/widgets/SiteBar.dart';
import 'package:getflutter/getflutter.dart';
import 'package:globalhost/widgets/card_box.dart';
import 'package:globalhost/widgets/footer.dart';
import 'package:globalhost/widgets/package_carousel.dart';
import 'package:globalhost/widgets/qoute_form.dart';
import 'package:globalhost/widgets/slides.dart';
import 'package:globalhost/widgets/titleBanner.dart';
import 'package:globalhost/widgets/txt_block.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child:Scaffold(
          backgroundColor: Color.fromRGBO(240, 250, 255, 0.9),
          extendBodyBehindAppBar: true,
          appBar: SiteBar(),

          body: SingleChildScrollView(

            child: Column(

              children: <Widget>[
                SizedBox(height: MediaQuery.of(context).size.height *0.08,),
                FittedBox(child:landingSlides(context)),
                homeBody(context)

              ],
            ),
          ),
        )
    );
  }
}

homeBody(inContext) {

  return Container(
    child: Column(
      children: <Widget>[

        //About Us
        Container(
          child: Column(
            children: <Widget>[
              TitleBanner('A Little More Us'),

              Card(
                margin: EdgeInsets.only(left: 10, right: 10,top: 2,bottom: 8),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      TextBlock(
                          'As a small business or organization we know '
                          'the task of keeping all your digital footprint '
                          'can be duanting task for any small business and organization '
                          'juggling daily operational work to grow their business. '
                          'and online presensence, That why we stepped up, to offer you '
                          'the best solution. '),

                      TextBlock(
                          'GlobalHost offers an oppoturnity for small businessses '
                              'and organization to go digital at an affordable rate '
                              'i.e Website design, Web hosting, domain names and emails...you name it. '
                              ),
                      TextBlock(
                        ' We build websites and apps that complements your business objectives, '
                        'Offering creative strategies and optimised brand development techniques'),
                      TextBlock('Our designers and developers can brand and rebrand your business from start to finish '),
                      TextBlock('No matter how small your business is, We can work together and get you to  your maximum potential.'),
                      SizedBox(height: 20,),
                      Container(
                        alignment: Alignment.center,

                        child: Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              width: 2,
                              height: MediaQuery.of(inContext).size.height/15,
                              color: Colors.blue,
                            ),
                            Expanded(
                              child: Padding(
                                padding:  EdgeInsets.only(left: 15.0, right: 8, top: 5),
                                child: Text(
                                    '"Let us manage the tech stuff for you, while '
                                        'you do what you do best; running your business."',
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.blue
                                ),),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GFButton(
                          elevation: 5,
                          buttonBoxShadow: true,
                          color: Colors.blue,
                          onPressed: (){},
                          text: "Read More",
                          shape: GFButtonShape.pills,
                        ),
                      ),
                    ]
                  ),
                ),
              )
            ],
          ),
        ),

        //Packages
        Container(
          child: Column(
            children: <Widget>[
              TitleBanner('Our Packages'),
              PackageCarousel(),

              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text('These packages are not a be and end all but they serve '
                          'as a guide to you and gives you an idea on how projects are priced,'
                          'They can be customized in a way that fits you.',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: 'OpenSans',
                        wordSpacing: 2
                        //fontStyle: FontStyle.italic
                      ),
                      textAlign: TextAlign.center,
                      ),

                      Text(
                          'Don\'t know which packages is right for you?',
                      style: TextStyle(
                          fontFamily: 'OpenSans',
                          wordSpacing: 2,
                          fontWeight: FontWeight.w400),),
                    ],
                  )),

              FittedBox(child: FlatButton(
                  onPressed: (){},
                  child:Text("Contact Us")))
            ],
          ),
        ),

        //Why choose us
        Container(
          child: Column(
            children: [
              TitleBanner('Why choose us?'),

             TextBox(
               title: 'Mobile Friendly Websites',
               text:'We strive to create websites that look  and funtion to the'
                        'highest Standards and ensures that their look great on '
                   'every device',
               image: 'user-interface.png',),
              Divider(),
              TextBox(
                title: 'We handle and manage the site',
                text: 'We know the struggle of having to run your business'
                    ' and maintain your site at the same time thus We offer an'
                    'option to handle everything from setup to deploying your site.',
              image:'tasksetting.png'),
              Divider(),
              TextBox(
                title: 'Affordable Packages',
                text: 'Our services are centralised around small business, '
                    'Entreprenuers and organizations '
                    'thus our prices are reasonable and packages are fully customizable',
              image:'packages.png'),
              Divider(),
              TextBox(
                  title:'Well seasoned Designers',
                  text: 'We pride ourselves on our ability to blend innvovation and efficiency',
              image: 'team.png',),
             Divider(),


             TextBlock('Still not convinced?'),
             FlatButton(

               child: TextBlock('Learn More'),
               onPressed: (){},
             )

                ]
              ),
          ),



        Container(
          child: Column(
            children: [
              TitleBanner('Our Work'),

              Container(

                child: GFCarousel(
                  enlargeMainPage: true,

                  items: ourProjects.map(
                      (url) {

                        return Card(
                          child: ClipRRect(
                            child: Image.network(
                                url,
                            fit: BoxFit.fill,),
                          )
                        );
                      }
                  ).toList(),
                ),
              ),
              Container(
                child: TitleBanner('Testimonials'),
              ),
              QouteForm(),

              HtmlElementView(),

              Footer(),
            ],

          ),
        ),
      ]
    ) ,
  );
}

final List<String> ourProjects = [
  "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg",
  "https://cdn.pixabay.com/photo/2017/12/13/00/23/christmas-3015776_960_720.jpg",
  "https://cdn.pixabay.com/photo/2019/12/19/10/55/christmas-market-4705877_960_720.jpg",
  "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg",
  "https://cdn.pixabay.com/photo/2019/12/22/04/18/x-mas-4711785__340.jpg",
  "https://cdn.pixabay.com/photo/2016/11/22/07/09/spruce-1848543__340.jpg"
];