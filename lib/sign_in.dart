import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignIn extends StatefulWidget{
  @override
  _SignInState  createState() => _SignInState();
}

class _SignInState extends State<SignIn>{
  @override
    // TODO: implement build
    bool _rememberPassword = false;
    final username = TextEditingController();
    final password = TextEditingController();
    // final re_password = TextEditingController();

    getDetails(){
      print(username.text);
      print(_rememberPassword);
      print(password.text);
    }
    @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget> [
                Container(
                  width: 350,
                  padding: EdgeInsets.all(10.0),
                  child: Text('Sign In',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  width: 350,
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    autocorrect: true,
                    controller: username,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      hintText: 'Enter Username',
                      hintStyle: TextStyle(color: Colors.white.withOpacity(0.6)),
                      focusColor: Colors.white,
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                    ),
                  ),
                ),

                Container(
                  width: 350,
                  padding: EdgeInsets.all(10.0),
                  child: TextField(obscureText: true,
                    autocorrect: true,
                    controller: password,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.white.withOpacity(0.6)),
                      focusColor: Colors.white,
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget> [Checkbox(
                  activeColor: Colors.orange,
                  value: _rememberPassword,
                  onChanged: (newValue){
                    setState(() {
                      _rememberPassword = newValue;
                    });
                  },),
                  Text('Remember Password',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                ],
                ),
                    // Container(
                    //   padding: EdgeInsets.symmetric(
                    //     vertical: 16.0,
                    //     horizontal: 34.0,
                    //   ),
                    //   decoration: BoxDecoration(
                    //     color: Colors.white,
                    //     borderRadius: BorderRadius.circular(30.0),
                    //   ),
                    //
                    //   child: Text('Save',
                    //     style: TextStyle(
                    //       color: Colors.red,
                    //       fontSize: 20.0,
                    //       fontWeight: FontWeight.bold,
                    //     ),
                    //   ),
                    // ),
                    RaisedButton(onPressed: getDetails,
                      color: Colors.white,
                      textColor: Colors.red,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.fromLTRB(100, 10, 100, 10),
                      child: Text('Get Started',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    ),

                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget> [
                    Container(
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.0),
                      ),

                      child: Icon(FontAwesomeIcons.twitter,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(
                      width: 38.0,
                    ),
                    Container(
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.0),
                      ),

                      child: Icon(FontAwesomeIcons.facebookF,
                      color: Colors.red,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text('Forgot Password?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(5.0),
                  color: Colors.black.withOpacity(0.2),
                  child: Text('Don\'t have an account? Sign Up',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.orange,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

}