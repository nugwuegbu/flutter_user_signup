import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payhomes_mobile/sign_in.dart';

class HomeSignInWidget extends StatelessWidget{
  final Function goToSignUp;
  final Function goToSignIn;
  HomeSignInWidget({this.goToSignUp,this.goToSignIn});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children:<Widget>[
      Container(
        padding: EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 20.0,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child:Row(mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget> [
            Icon(FontAwesomeIcons.facebookF,
              color: Colors.red,
              size: 30.0,
            ),
            Text('| Sign in With Facebook',style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),),
          ],
        ),
      ),
      SizedBox(
        height: 20.0,
      ),
      Container(
        padding: EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 20.0,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child:Row( mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget> [
            Icon(FontAwesomeIcons.twitter,
              color: Colors.red,
              size: 30.0,
            ),
            Text('| Sign in With Twitter',style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),),
          ],
        ),
      ),
      SizedBox(
        height: 20.0,
      ),
      InkWell(onTap: (){
        goToSignUp();
      },
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 20.0,
            horizontal: 20.0,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30.0),
          ),
          child:Row( mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget> [
              Text('Sign Up',style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),),
            ],
          ),
        ),
      ),
      SizedBox(
        height: 20.0,
      ),
      InkWell(onTap: (){
        goToSignIn();
      },
        child: Text('Already Registered? Sign In',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
          ),
        ),
      ),

    ]
    );
  }
}