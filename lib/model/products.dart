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
          title: 'Coke',
          description: 'des_01 Coca cola is a sweetened carbonated beverage that is a cultural institution in the United States and a global symbol of American tastes',
          image: 'https://pyxis.nymag.com/v1/imgs/be8/37a/7056e863beb0c3be28f90e2df157f9e636-24-coke.rsquare.w330.jpg',
          price: 30.0
      ),
      Products(
          id: 2,
          title: 'Pepsi',
          description: "des_02 Pepsi is originally created and developed in 1893 by Caleb Bradham and introduced as Brad's Drink, it was renamed as Pepsi-Cola in 1898, and then shortened to Pepsi in 1961",
          image: 'https://cdn.shopify.com/s/files/1/0603/9227/6145/products/BATH_e2542b91-8ff6-4ec2-b0be-01dcaf01143a.jpg?v=1635271750',
          price: 31.5
      ),
      Products(
          id: 3,
          title: 'Seven Up',
          description: 'des_03 Seven Up is an American brand of lemon-lime-flavored non-caffeinated soft drink. The brand and formula are owned by Keurig Dr Pepper although the beverage is internationally distributed by PepsiCo.',
          image: 'https://cdn.shopify.com/s/files/1/0036/4806/1509/products/3b2000392143c958953ffd4558659bcdaafe2dff_square963503_1.jpg?v=1652787992',
          price: 28.7
      ),
      Products(
          id: 4,
          title: 'Banh mi',
          description: 'des_04 A masterpiece from Vietnamese culture try once and you will be forever in love <3',
          image: 'https://pyxis.nymag.com/v1/imgs/445/85c/d55a6ce7fc07342e121d71becfa36ee96c-best-bahn-mi-ba-xuyen.rsquare.w700.jpg',
          price: 25.0
      ),
    ];
    return data;
  }

}