import 'package:flutter/material.dart';
import 'package:notice_board_app/models/notice_model.dart';

class NoticeScreen extends StatelessWidget {
  const NoticeScreen({
    Key? key,
    required this.passedNotice,
  }) : super(key: key);

  final NoticeModel passedNotice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(passedNotice.noticeTitle),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
