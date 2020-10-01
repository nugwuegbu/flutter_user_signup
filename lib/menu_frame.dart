import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payhomes_mobile/create_login.dart';
import 'package:payhomes_mobile/home_signin_widget.dart';
import 'package:payhomes_mobile/sign_in.dart';

class MenuFrame extends StatelessWidget{
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child:Container(
        child:SafeArea(
          child:Padding(
            padding:EdgeInsets.symmetric(horizontal: 28.0,vertical: 40.0),
            child: Column(
              children: <Widget> [
                Icon(FontAwesomeIcons.home,
                  color: Color.fromRGBO(245, 48, 111, 1.0),
                  size: 60.0,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('PAY',
                        style: TextStyle(
                          color: Color.fromRGBO(245, 48, 111, 1.0),
                          fontSize: 38.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('HOMES',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 38.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ]
                ),
                Text('The Most Flexible Building Loan Scheme',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 45.0,
                ),
                Expanded(child:
                  PageView(
                    controller: pageController,
                    children:<Widget> [
                      HomeSignInWidget(
                        goToSignIn: (){
                          pageController.animateToPage(1, duration: Duration(milliseconds: 200), curve: Curves.easeIn);
                        },
                        goToSignUp: (){
                          pageController.animateToPage(2, duration: Duration(milliseconds: 200), curve: Curves.easeIn);
                        },
                      ),
                      SignIn(),
                      CreateLogin(
                        cancelBackToHome: (){
                          pageController.animateToPage(0, duration: Duration(milliseconds: 200), curve: Curves.easeIn);
                        },
                      ),

                  ],
                  ),
                ),

              ],
            ),
          ),
        ),
        decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment.topCenter,end: Alignment.bottomCenter,colors: [
          Color.fromRGBO(255, 123, 67, 1.0),
          Color.fromRGBO(245, 50, 111, 1.0),
        ])),
      ),
    );
  }
}