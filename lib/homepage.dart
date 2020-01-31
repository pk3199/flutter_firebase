import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home page"), centerTitle: true,),
      body: Center(
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("You are logged in"),
                SizedBox(height: 70.0,),
                new OutlineButton(
                  child: Text("LogOut"),
                  color: Colors.redAccent,
                  textColor: Colors.white,
                  onPressed: (){},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
