import 'package:flutter/material.dart';

import '../../model/user.dart';
import '../../model/utilities.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  var email = TextEditingController();
  final password = TextEditingController();
  final confirm = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  var _passKey = GlobalKey<FormFieldState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 30,),
            emailTextFormField(),
            SizedBox(height: 30,),
            passwordTextFormField(),
            SizedBox(height: 30,),
            confirmTextFormField(),
            SizedBox(height: 30,),
            SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: (){
                  if(_formKey.currentState!.validate()){
                    Navigator.pop(context, User(username:email.text, password:confirm.text));
                  }
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  backgroundColor: Colors.green,
                ),
                child: const Text('Continue', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
              ),
            ),
            //SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }

  TextFormField emailTextFormField(){
    return TextFormField(
      controller: email,
      validator:(emailString) {
        return Utilities.validateEmail(emailString!);
      },
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Enter your email',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(Icons.email_outlined),
      ),
      onSaved: (value){
        setState(() => email.text = value!);
      },
    );
  }

  TextFormField passwordTextFormField(){
    return TextFormField(
      key: _passKey,
      controller: password,
      validator: (passwordKey) {
       return Utilities.validatePassword(passwordKey!);
      },
      obscureText: true,
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Enter your password',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(Icons.lock_outline),
      ),
    );
  }

  TextFormField confirmTextFormField(){
    return TextFormField(
      controller: confirm,
      validator: (confirmPassword) {
       var pass = _passKey.currentState?.value;
       return Utilities.confirmPassword(confirmPassword!, pass);
      },
      obscureText: true,
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Re-enter your password',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(Icons.lock_outline),
      ),
      onSaved: (value){
        setState(() => confirm.text = value!);
      },
    );
  }
}


