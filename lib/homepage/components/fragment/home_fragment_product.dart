import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_now/model/products.dart';
import 'package:flutter/widgets.dart';



class ProductPopular extends StatelessWidget {
  final products = Products.init();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            children: const [
              Expanded(child: Text('Popular Products', style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.green,
              ),)),
              Text('See more', style: TextStyle(fontSize: 16, color: Colors.lightGreen),),
            ],
          ),
          SizedBox(height: 10,),
          Container(
            child: GridView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              primary: false,
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount,
              itemBuilder: (context, index){
                return ProductItem(
                  products: products[index],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  Products product;
  ProductItem({required this.product});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

