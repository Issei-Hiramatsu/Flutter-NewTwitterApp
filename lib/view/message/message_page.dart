import 'package:flutter/material.dart';

import '../../component/app_bar/default_app_bar.dart';
import '../../component/bottom_navigation_bar.dart';

class MessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, //statusbarと色が被っているため
      appBar: TwitterDefaultAppBar(
        titleSpace: Text('メッセージ'),
        iconSpace: Icons.settings,
        iconAction: () {},
        bottomSpace: Container(
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(16)),
            child: TextFormField(
                decoration: const InputDecoration(
              prefixIcon: Icon(Icons.search_outlined),
              hintText: 'ダイレクトメッセージを検索',
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ))),
      ),
      body: Container(),
      bottomNavigationBar: TwitterBottomNavigationBar(),
    );
  }
}
