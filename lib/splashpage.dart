import 'package:flutter/material.dart';
import 'package:food_now/homepage/homepage.dart';
// import 'package:flutter/cupertino.dart';
import 'package:food_now/signin/signin_page.dart';
import 'package:food_now/signup/signup_page.dart';
import 'package:food_now/homepage/homepage.dart';

class SplashPage extends StatelessWidget{
  static String routeName = "/splash";

  const SplashPage({super.key});

  @override
  Widget build(BuildContext context){
    // Future.delayed(const Duration(seconds: 3), (){
    //   Navigator.pushNamedAndRemoveUntil(context, SignInPage.routeName, (Route<dynamic> route) => false);
    // });

    return
    HomePage();
    //   Scaffold(
    //   body: SafeArea(
    //     child: Container(
    //       width: MediaQuery.of(context).size.width,
    //       height: MediaQuery.of(context).size.height,
    //       decoration: const BoxDecoration(
    //         color: Colors.green
    //       ),
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: const [
    //           CircularProgressIndicator(
    //             backgroundColor: Colors.white,
    //             strokeWidth: 5,
    //           ),
    //           SizedBox(height: 5,),
    //           Text('Loading...', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18))
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }

}

