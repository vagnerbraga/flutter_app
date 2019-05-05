import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget{

  final Function addProduct;

  ProductControl(this.addProduct);

  @override
  Widget build(BuildContext context) {

    return RaisedButton(
        color: Theme.of(context).primaryColorDark,
        onPressed: (){
          this.addProduct({'title':'Chocolate', 'image':'./assets/02.jpg'});

        },
        child:Text("Add")

    );
  }


}