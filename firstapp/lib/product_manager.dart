import 'package:firstapp/products.dart';
import 'package:flutter/material.dart';

class ProductManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = ['Thosai'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            onPressed: () {
              setState(() {
                _products.add('Vaddai');
              });
            },
            child: Text('Add product'),
          ),
        ),
        Products(_products)
      ]
    );
  }
}
