
import 'package:flutter/material.dart';
import 'package:globalhost/models/qoute_model.dart';
import 'card_box.dart';
import 'package:getflutter/getflutter.dart';

class QouteForm extends StatefulWidget {

  @override
  _QouteFormState createState() => _QouteFormState();
}

class _QouteFormState extends State<QouteForm> {
  bool _autoValidate = false;
  QouteModel user;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context){

    return Card(
      elevation: 5,
      margin: EdgeInsets.all(10),
      child: Form(
        key: _formKey,
        autovalidate: _autoValidate,
        child: Column(

          children: [

            Padding(
              padding: const EdgeInsets.only(top:10.0),
              child: TextBox(
                title: 'Get a free qoute',
                text: 'We want to hear from you. If you have questions, let us know '
                    'below and we will get back to you.',
                image: 'admin.png',
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Name*",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  )
                ),

                validator: (value){
                  if(value.length > 3)
                    return null;
                  else
                    return 'Please enter your name';
                },
                onSaved:(value){
                  print(value);
                  user.name = 'How is this null';
                },

              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Phone Number or Email*",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  )
                ),

                validator: (value){
                  if (value.isEmpty)
                    return 'Please enter your number or email';
                  else
                    return null;
                },

                onSaved: (contactInfo){
                  user.contact = contactInfo;
                },
              ),
            ),

            Container(
              padding: EdgeInsets.all(8.0),
              child: TextFormField(
                maxLength: 500,
                decoration: InputDecoration(
                  labelText: 'Your Message',
                  border: OutlineInputBorder()
                ),
                validator: (value){
                  if (value.isEmpty)
                    return 'Mesage Box empty';
                  else
                    return null;
                },

                onSaved: (message){
                  user.message = message;
                },


              ),
            ),

            RaisedButton(
              //text: 'Submit',
              color: Colors.blue,
              onPressed:  (){
                if( _formKey.currentState.validate()){
                  _formKey.currentState.save();
                }

                else{
                  setState((){ _autoValidate = true;});
                }
              },
            )

          ],
        ),
      ),
    );
  }
}