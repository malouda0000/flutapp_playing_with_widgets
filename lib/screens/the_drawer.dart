import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.home_outlined),
            title: Text('home'),
            subtitle: Text('suptitile for the home'),
            onTap: () => {},
          )
        ],
      ),
    );
  }
}
