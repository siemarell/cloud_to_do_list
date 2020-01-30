import 'package:cloud_to_do_list/stores/root_store.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LogoutButton extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final rootStore = Provider.of<RootStore>(context);
    return IconButton(
        icon: Icon(Icons.exit_to_app),
        onPressed: () => showDialog(
            context: context,
            builder: (context) {
              final title = Text('Are you sure you want to logout?');
              final noCallback = () => Navigator.of(context).pop();
              final yesCallback = () {
                rootStore.accountStore.logout();
                Navigator.of(context).pop();
              };
              return Theme.of(context).platform == TargetPlatform.android
                  ? AlertDialog(
                      title: title,
                      actions: <Widget>[
                        MaterialButton(
                          child: Text('No'),
                          onPressed: noCallback,
                        ),
                        MaterialButton(
                          child: Text('Yes'),
                          onPressed: yesCallback,
                        )
                      ],
                    )
                  : CupertinoAlertDialog(
                      title: title,
                      actions: <Widget>[
                        CupertinoDialogAction(
                          child: Text('No'),
                          onPressed: noCallback,
                        ),
                        CupertinoDialogAction(
                          child: Text('Yes'),
                          onPressed: yesCallback,
                        )
                      ],
                    );
            })
        //rootStore.accountStore.logout,
        );
  }
}
