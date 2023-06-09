import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:food_now/detail/components/addtocart.dart';
import 'package:food_now/model/products.dart';



class Body extends StatelessWidget {
  Products product;
  Body({required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 200,
                child: Image.network(product.image)
              ),
              SizedBox(height: 20,),
              Expanded(child: Text("Description: ${product.description}"), flex: 1,),
              AddProductToCart(product: product,)
            ]
        )
    );
  }
}