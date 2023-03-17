import 'package:flutter/material.dart';
import 'package:food_now/signin/components/signin_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            headerScreen(context),
            SignInForm(),
            footerScreen(context),
          ],
        ),
      ),
    ));
  }

  Widget headerScreen(BuildContext context){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*0.2,
      alignment: Alignment.bottomRight,
      child: Image.network(
          'https://www.pngarts.com/files/18/Indian-Cuisine-Curry-Dishes-Background-PNG.png'
      )
    );
  }
  Widget footerScreen(BuildContext context){
    return Container(
      height: 200,
      alignment: Alignment.bottomLeft,
      child: Image.network(
          'https://images.pngnice.com/download/2007/Indian-Food-PNG-Image.png'
      ),
    );
  }

}
