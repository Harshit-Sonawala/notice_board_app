import 'package:flutter/material.dart';
import './notice.dart';

class AllNotices extends StatelessWidget {
  const AllNotices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int eachNotice) => const Notice(),
    );
  }
}
