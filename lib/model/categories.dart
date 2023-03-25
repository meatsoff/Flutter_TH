import 'package:flutter/material.dart';

class Categories{
  int id;
  String title;
  String image;

  Categories({required this.id,required this.title,required this.image});

  static List<Categories> init(){
    List<Categories> data = [
      Categories(id: 1, title: 'HighLand', image: 'https://upload.wikimedia.org/wikipedia/vi/thumb/c/c9/Highlands_Coffee_logo.svg/1280px-Highlands_Coffee_logo.svg.png'),
      Categories(id: 2, title: 'CircleK', image: 'https://nqtm.vn/wp-content/uploads/2020/04/acd21e9a-min.png'),
      Categories(id: 3, title: '711', image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/40/7-eleven_logo.svg/2110px-7-eleven_logo.svg.png'),
      Categories(id: 4, title: 'MiniStop', image: 'https://artemiscdn.bky.ph/assets/1674514521-7f62657e571e13998b32d051e6d65678bb1e2c4a.jpg'),

    ];
    return data;
  }
}
