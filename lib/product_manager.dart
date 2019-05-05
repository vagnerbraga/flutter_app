import 'package:flutter/material.dart';
import 'package:flutter_app/product_control.dart';

import 'package:flutter_app/products.dart';


class ProductManager extends StatefulWidget {

  Map startingProduct;

  ProductManager(){ //this.startingProduct){
    print("[PRODUCTS MANAGER] => cosntruct");
  }

  @override
  State<StatefulWidget> createState() {
    print("[PRODUCTS MANAGER] => CREATESTATE()");
    return _ProductManagerState();
  }
}

  class _ProductManagerState extends State<ProductManager>{

    List<Map> _products = [];
    
    @override
  void initState() {
      print("[PRODUCTS state] => INITSTATE");

      if(widget.startingProduct != null){
        _products.add(widget.startingProduct);
      }

    super.initState();
  }


  void addProduct(Map product){
      setState(() {
        _products.add(product);
      });
  }

  void _deleteProduct(int index){

      setState(() {
        _products.removeAt(index);
      });
  }


    @override
    Widget build(BuildContext context) {
      print("[PRODUCTS STATE] => BUILD()");
      return Column(
        children: <Widget>[
            Container(
              margin: EdgeInsets.all(10.0),
              child: ProductControl(addProduct)
            ),
           Expanded(child: Products(_products, deleteProduct: _deleteProduct),)
        ],
      );

    }
  }


