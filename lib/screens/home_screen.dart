import 'package:flutter/material.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/all_notices.dart';
import '../widgets/important_notices.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.account_circle,
              ),
            ),
          ],
          title: const Text(
            'Notice Board App',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          bottom: TabBar(
            tabs: [
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Icon(Icons.list),
                    SizedBox(width: 10),
                    Text('All', style: TextStyle(fontSize: 18)),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Icon(Icons.announcement),
                    SizedBox(width: 10),
                    Text('Important', style: TextStyle(fontSize: 18)),
                  ],
                ),
              ),
            ],
          ),
        ),
        drawer: const CustomDrawer(),
        body: const TabBarView(
          children: <Widget>[
            AllNotices(),
            ImportantNotices(),
          ],
        ),
      ),
    );
  }
}
