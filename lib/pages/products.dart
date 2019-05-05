import 'package:flutter/material.dart';

import '../product_manager.dart';
import 'products_admin.dart';

class ProductsPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
       appBar: AppBar(
         leading: IconButton(
           icon: Icon(Icons.arrow_back),
           onPressed: () {
             Navigator.pushReplacement(
               context,
               MaterialPageRoute(
                 builder: (BuildContext context) => ProductsAdmin(),
               ),
             );
           },
         ),
          title: Text("List of Products"),
        ),

        body: ProductManager()
    );
  }

}