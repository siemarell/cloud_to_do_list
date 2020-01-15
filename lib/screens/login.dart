import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//        appBar: AppBar(title: Text('foo')),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                decoration: BoxDecoration(color: Colors.red),
                child: Text('R'),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.green),
                child: Text('G'),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text('B'),
              )
            ]));
  }
}
