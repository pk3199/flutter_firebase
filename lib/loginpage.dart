import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                  child: Text("Log In"),
                  color: Colors.blue,
                  textColor: Colors.white,
                  elevation: 8.0,
                  onPressed: () {},
                ),
                SizedBox(height: 10.0,),
                RaisedButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(10.0)),
                  child: Text("Sign Up"),
                  color: Colors.blue,
                  textColor: Colors.white,
                  elevation: 8.0,
                  onPressed: () {
                    Navigator.of(context).pushNamed('/signup');
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
