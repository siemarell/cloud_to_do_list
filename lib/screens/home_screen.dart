import 'package:cloud_to_do_list/stores/root_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final rootStore = Provider.of<RootStore>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Observer(builder: (_) => Text("${rootStore.accountStore.user.displayName}")),
    );
  }
}
