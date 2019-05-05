import 'package:flutter/material.dart';

import './pages/product.dart';

class Products extends StatelessWidget{

  final List<Map> products;
  final Function deleteProduct;

  Products(this.products  , {this.deleteProduct}){
    print("[PRODUCTS WIDGET] => constructors");
  }


  Widget _buildProductItem(BuildContext context, int index){

    return Card(child:
              Column(children: <Widget>[
                  Image.asset(products[index]['image'],  scale: 1.0,),
                  Text(products[index]['title']),
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FlatButton(
                        child: Text("Details"),
                        onPressed: ()=>Navigator.push<bool>(
                            context,
                            MaterialPageRoute(builder: (BuildContext context)=>Product(products[index]['title'], products[index]['image']),
                            ),
                        ).then((bool onValue) {
                            if(onValue){
                              this.deleteProduct(index);
                            }
                        }),
                      )
                    ],
                  )
                ],
              ),
            );


  }

  @override
  Widget build(BuildContext context) {

    print("[PRODUCTS WIDGET] => build()");
    return products.length > 0 ? ListView.builder(
              itemBuilder: _buildProductItem,
              itemCount: products.length,
            ) : Center(child: Text("No Products found,  please add some"),);

  }


}