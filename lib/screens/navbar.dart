import 'package:flutter/material.dart';

// ignore: camel_case_types
class navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Welcome to Vnews'),
            accountEmail: Text("Vnews@gmail.com"),
            currentAccountPicture: CircleAvatar(
                child: ClipOval(child: Image.asset('assets/images/man.png'))),
          ),
        ],
      ),
    );
  }
}
