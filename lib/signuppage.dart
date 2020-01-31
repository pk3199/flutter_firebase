import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  String _email;
  String _password;
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(hintText: "Email"),
                  onChanged: (value) {
                    setState(() {
                      _email = value;
                    });
                  },
                ),
                SizedBox(height: 20.0),
                TextField(
                  decoration: InputDecoration(hintText: "Password"),
                  onChanged: (value) {
                    setState(() {
                      _password = value;
                    });
                  },
                ),
                SizedBox(height: 30.0),
                RaisedButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(10.0)),
                  child: Text("Sign In"),
                  color: Colors.blue,
                  textColor: Colors.white,
                  elevation: 8.0,
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}