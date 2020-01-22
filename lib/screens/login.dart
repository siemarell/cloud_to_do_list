import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Login')),
        ),
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/blue_bg.jpeg"),
                    fit: BoxFit.cover)),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  FlatButton(
                    color: Colors.red,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(8.0),
                    child: Center(child: Text('GOOGLE')),
                    onPressed: () => {},
                  ),
                  FlatButton(
                    color: Colors.green,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(8.0),
                    child: Center(child: Text('FACEBOOK')),
                    onPressed: () => {},
                  ),
                  FlatButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(8.0),
                    child: Center(child: Text('TWITTER')),
                    onPressed: () => {},
                  ),
                ])));
  }
}
