import 'package:flutter/material.dart';

import './products.dart';

class ProductsAdmin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {},
      child: Scaffold(
        drawer: Drawer(
          child: Column(children: <Widget>[
            AppBar(
              title: Text('Choose'),
              automaticallyImplyLeading: false,
            ),
            ListTile(
              title: Text('Manager Products'),
              onTap: (){
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (BuildContext context)=> ProductsPage()));
              },
            ),
          ],
          ),

        ),
        appBar: AppBar(

          title: Text('Products Admin'),
        ),
        body: Center(child: Text('This is products admin page.')),
      ),
    );
  }
}