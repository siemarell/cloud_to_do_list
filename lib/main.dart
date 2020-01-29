import 'package:cloud_to_do_list/screens/home_screen.dart';
import 'package:cloud_to_do_list/stores/root_store.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import 'screens/login_screen.dart';

void main() => runApp(Provider(create: (_) => RootStore(), child: MyApp()));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final accountStore = Provider.of<RootStore>(context).accountStore;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Observer(builder: (_) {
        final userFuture = accountStore.user;
        if (userFuture.status == FutureStatus.pending) {
          return CircularProgressIndicator();
        } else {
          return userFuture.value == null
              ? LoginScreen(accountStore)
              : HomeScreen();
        }
      }),
    );
  }
}
