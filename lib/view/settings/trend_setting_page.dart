import 'package:flutter/material.dart';

import '../settings/component/setting_app_bar.dart';

class TrendSettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, //statusbarと色が被っているため
      appBar: TwitterSettingAppBar(
        titleSpace: '[話題を検索] の設定',
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('位置情報'),
            SwitchListTile(
              title: Text('現在の場所のコンテンツを表示'),
              onChanged: (bool value) {},
              value: true,
            ),
            Text('場所を調べる')
          ],
        ),
      ),
    );
  }
}
