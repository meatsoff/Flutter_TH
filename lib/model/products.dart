import 'package:flutter/material.dart';

class Products{
  int id;
  String title, description, image;
  double price;

  Products({required this.id, required this.title, required this.description, required this.image, required this.price});

  static List<Products> init(){
    List<Products> data = [
      Products(
          id: 1,
          title: 'Bread',
          description: 'des_01',
          image: 'https://mayihavethatrecipe.com/wp-content/uploads/2022/03/banh-mi-sandwich-wp-square-photo.jpg',
          price: 8.0
      ),
    ];
    return data;
  }

}