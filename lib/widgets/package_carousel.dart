import 'package:getflutter/getflutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:globalhost/models/price_plan.dart';

class PriceCard extends StatelessWidget{
  PricePlan pricePlan;
  PriceCard(this.pricePlan);
  @override
  Widget build(BuildContext context) {

    return Card(
      elevation: 5,
      margin: EdgeInsets.all(5),

      child: Container(
        //height: MediaQuery.of(context).size.height/2.5,
        width: MediaQuery.of(context).size.width/ 2.5,

        child: Column(

          children: <Widget>[
            Container(
              height: 100,
              width: MediaQuery.of(context).size.height,
              color: Colors.lightBlue,

              child: Column(
                children: <Widget>[
                  Container(
                     alignment: Alignment.topLeft,
                     padding: EdgeInsets.all(10),

                      child: Text(
                          pricePlan.planName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                      ),
                      )
                  ),

                  Container(
                    padding: EdgeInsets.all(10),
                      child: Text(
                          pricePlan.price,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: Colors.white
                      ),
                      )
                  )
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  FittedBox(child: Text('Hosting Space: ${pricePlan.hostingSpace} ')),
                  Divider(),
                  FittedBox(child: Text('${pricePlan.websiteDesign}')),
                  Divider(),
                  FittedBox(child: Text('Emails ${pricePlan.numEmails}')),
                  Divider(),
                  Text('Sub Domains: 2'),
                  Divider(),

                  Container(
                    alignment: Alignment.bottomCenter,
                    child: GFButton(
                      onPressed: (){},
                      text: 'Order Now',
                      shape: GFButtonShape.pills,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}



class PackageCarousel extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          PriceCard(pricePlanList[0]),
          PriceCard(pricePlanList[1]),
          PriceCard(pricePlanList[2]),
        ]
      ),
    );
  }
}
