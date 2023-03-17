import 'dart:convert';
import 'package:http/http.dart' as http;
import 'products.dart';
import 'package:sky_engine/convert/convert.dart';

import 'package:quiver/strings.dart';

class Utilities{

  static List<Products> data = [];

  // static String validateEmail(String value){
  //   if(value.isEmpty){
  //     return 'Please enter your email';
  //   }
  //   Pattern pattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
  //   RegExp regex = new RegExp(pattern);
  // }

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
