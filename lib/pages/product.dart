import 'dart:async';

import 'package:flutter/material.dart';

class Product extends StatelessWidget{

  final String title;
  final String imageUrl;

  Product(this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WillPopScope( onWillPop: (){
      Navigator.pop(context, false);
      return Future.value(false);
    },
      child: Scaffold(
        appBar:
          AppBar(
            title: Text(this.title),
          ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(this.imageUrl,  scale: 1.0,),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text(this.title),
            ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: RaisedButton(
              color: Theme.of(context).primaryColor,
              child: Text("Delete"),
              onPressed: ()=> Navigator.pop(context, true),
            ),
          )

        ],
          ),

      ),
    );
  }



}
