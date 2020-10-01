
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';

class CreateLogin extends StatefulWidget{
  final Function cancelBackToHome;
  CreateLogin({this.cancelBackToHome});
  @override
  _CreateLoginState createState() => _CreateLoginState();
}

class _CreateLoginState extends State<CreateLogin>{
  bool _termsAgreed = true;
  final username = TextEditingController();
  final password = TextEditingController();
  final re_password = TextEditingController();
  
  getDetails(){
    print(username.text);
    print(_termsAgreed);
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
                child: Text('Create Your Login',
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
              Container(
                width: 350,
                padding: EdgeInsets.all(10.0),
                child:  TextField(obscureText: true,
                  controller: re_password,
                  autocorrect: true,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    hintText: 'Re-Enter Password',
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
              Row(children:<Widget> [Checkbox(
                activeColor: Colors.orange,
                value: _termsAgreed,
                onChanged: (newValue){
                  setState(() {
                    _termsAgreed = newValue;
                  });
                },),
                Text('I Agree to Terms and Conditions',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget> [
                 InkWell(
                   onTap: (){
                     widget.cancelBackToHome;
                   },
                   child:  Text('Cancel',
                     style: TextStyle(
                       color: Colors.white,
                       fontWeight: FontWeight.bold,
                       fontSize: 20.0,
                     ),
                   ),
                 ),
                  SizedBox(
                    width: 38.0,
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
                    color: Colors.green,
                    textColor: Colors.white,
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Text('Save'),
                  ),
                ],
              ),
              Text('Agree to Terms and Conditions',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


