import 'package:flutter/material.dart';

class Categories{
  int id;
  String title;
  String image;

  Categories({required this.id,required this.title,required this.image});

  static List<Categories> init(){
    List<Categories> data = [
      Categories(id: 1, title: 'HighLand', image: 'data:image/png;base64,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'),
      Categories(id: 2, title: 'CircleK', image: 'data:image/png;base64,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'),
      Categories(id: 3, title: '711', image: 'data:image/png;base64,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'),
      Categories(id: 4, title: 'MiniStop', image: 'https://artemiscdn.bky.ph/assets/1674514521-7f62657e571e13998b32d051e6d65678bb1e2c4a.jpg'),

    ];
    return data;
  }
}