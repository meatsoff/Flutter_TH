import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_now/model/products.dart';
import 'package:flutter/widgets.dart';

import '../../../detail/productpage.dart';
import '../../../model/utilities.dart';



class ProductPopular extends StatelessWidget {

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
            child: FutureBuilder<List<Products>>(
              future: Utilities().getProducts(),
              builder: (context, snapshot) {
                if(snapshot.hasData){
                  print(snapshot.data);
                  return GridView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    primary: false,
                    itemCount: snapshot.data!.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 0.8,
                    ),
                    itemBuilder: (context, index){
                      return ProductItem(
                        product: snapshot.data![index],
                      );
                    },
                  );
                }
                return Center(child: Text('Lỗi rồi lỗi rồi'),);
              }
            ),
          )
        ],
      ),
    );
  }
}


class ProductItem extends StatelessWidget {
  final Products product;
  const ProductItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    print(product.title);
    return GestureDetector(
      onTap: (){
        Utilities.data.add(product);
        Navigator.pushNamed(context, ProductPage.routeName,
            arguments: ProductDetailsArguments(product: product));
      },
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(product.image,fit: BoxFit.fill),
          Row(
            children: [
              Expanded(child: Text(product.title)),
              Container(
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(2),
                    color: Colors.green
                ),
                child: Text(
                  product.price.toString(),
                  style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold
                ),),
              )
            ],
          )
        ],
      ),
    );
  }
}

