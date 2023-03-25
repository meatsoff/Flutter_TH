import 'dart:convert';
import 'package:http/http.dart' as http;
import 'products.dart';


import 'package:quiver/strings.dart';

class Utilities{
  String url ="http://192.168.0.100:3000/api/food";
  static List<Products> data =[];

  Future<List<Products>> getProducts() async{
    var res= await http.get(Uri.parse(url));
    if(res.statusCode==200){
      var content =res.body;
      print(content.toString());
      var arr =json.decode(content)['food'] as List;

      return arr.map((e) => _fromJson(e)).toList();
    }
    return [];
    //return List<Products>();
  }

  Products _fromJson(Map<String,dynamic>item){
    return Products(
        id: item['id'],
        title: item['title'],
        description: item['description'],
        image: item['image'],
        price: double.parse(item['price']));
  }

  static String validateEmail(String value){
    if(value.isEmpty){
      return 'Please enter your email';
    }
    // Pattern pattern = (r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
    RegExp regex = new RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
    if(!regex.hasMatch(value)){
      return 'Enter valid email';
    }
    return 'Email suitable';
  }

  static String validatePassword(String value){
    if(value.isEmpty){
      return 'Please enter password';
    }
    if(value.length < 8){
      return 'Password should be more than 8 characters';
    }
    return 'Password suitable';
  }

  static String confirmPassword(String value1, String value2){
    if(!equalsIgnoreCase(value1, value2)) {
      return 'Confirm password invalid';
    }
    return 'Confirm success';
  }
}
