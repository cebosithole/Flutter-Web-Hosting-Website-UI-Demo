
import 'package:flutter/material.dart';
import 'package:globalhost/widgets/qoute_form.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 18,
            width: MediaQuery.of(context).size.width,
            color: Colors.blueAccent,

            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('(c) 2020 - HorseShoe| All rights reserves'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
