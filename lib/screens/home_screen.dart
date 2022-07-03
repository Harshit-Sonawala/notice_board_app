import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notice Board App'),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            DrawerHeader(
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                ),
                child: const Text(
                  'Notice Board App Version 1.0',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            ListTile(
              title: Text('Drawer Tile 1'),
              onTap: () => {},
            ),
            ListTile(
              title: Text('Drawer Tile 2'),
              onTap: () => {},
            ),
            ListTile(
              title: Text('Drawer Tile 3'),
              onTap: () => {},
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text('Body Text'),
      ),
    );
  }
}
