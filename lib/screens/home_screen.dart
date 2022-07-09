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
          title: const Text('Notice Board App'),
          bottom: TabBar(
            tabs: [
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Icon(Icons.list),
                    SizedBox(width: 8),
                    Text('All'),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Icon(Icons.announcement),
                    SizedBox(width: 8),
                    Text('Important'),
                  ],
                ),
              ),
            ],
          ),
        ),
        drawer: const CustomDrawer(),
        body: TabBarView(
          children: <Widget>[
            AllNotices(),
            ImportantNotices(),
          ],
        ),
      ),
    );
  }
}
