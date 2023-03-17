
import 'package:flutter/widgets.dart';
import 'package:food_now/homepage/homepage.dart';
import 'package:food_now/signup/signup_page.dart';
import 'package:food_now/splashpage.dart';
import 'package:food_now/signin/signin_page.dart';

final Map<String, WidgetBuilder> routes = {
  SplashPage.routeName: (context) => SplashPage(),
  SignInPage.routeName: (context) => SignInPage(),
  SignUpPage.routeName: (context) => SignUpPage(),
  HomePage.routeName: (context) => HomePage(),
};
