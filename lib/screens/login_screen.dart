import 'package:cloud_to_do_list/stores/account_store.dart';
import 'package:cloud_to_do_list/stores/root_store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final accountStore = Provider.of<RootStore>(context).accountStore;

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
                onPressed: () => accountStore.login(LoginType.GOOGLE),
              ),
              FlatButton(
                color: Colors.green,
                textColor: Colors.white,
                padding: EdgeInsets.all(8.0),
                child: Center(child: Text('FACEBOOK')),
                onPressed: () => accountStore.login(LoginType.FACEBOOK),
              ),
              FlatButton(
                color: Colors.blue,
                textColor: Colors.white,
                padding: EdgeInsets.all(8.0),
                child: Center(child: Text('TWITTER')),
                onPressed: () => accountStore.login(LoginType.TWITTER),
              ),
            ]),
      ),
    );
  }
}
