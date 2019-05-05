import 'package:flutter/material.dart';

import 'products_admin.dart';

class Auth extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('Login'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Login') ,
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (BuildContext context)=>ProductsAdmin()),
            );
          },
        ),
        ) ,
      );

  }



}