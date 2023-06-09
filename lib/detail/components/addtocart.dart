import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:food_now/model/carts.dart';
import 'package:food_now/model/products.dart';

import 'package:fluttertoast/fluttertoast.dart';



class AddProductToCart extends StatefulWidget {
  Products product;
  AddProductToCart({required this.product});

  @override
  _AddProductToCartState createState() => _AddProductToCartState();
}

class _AddProductToCartState extends State<AddProductToCart> {
  @override
  void InitState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50,
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
            onPressed: () {
              Cart cart = Cart();
              cart.addProductToCart(widget.product);
              print(cart.getCart().length.toString());
              Fluttertoast.showToast(
                msg: 'Add to cart',
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.pinkAccent,
                textColor: Colors.white,
                fontSize: 16,
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            ),
            child: Text("Add to cart", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white))
        )
    );
  }
}