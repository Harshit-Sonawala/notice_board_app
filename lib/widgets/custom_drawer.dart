import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
            child: const Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Notice Board App Version 1.0',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          ListTile(
            title: const Text('Drawer Tile 1'),
            onTap: () => {},
          ),
          ListTile(
            title: const Text('Drawer Tile 2'),
            onTap: () => {},
          ),
          ListTile(
            title: const Text('Drawer Tile 3'),
            onTap: () => {},
          ),
        ],
      ),
    );
  }
}
