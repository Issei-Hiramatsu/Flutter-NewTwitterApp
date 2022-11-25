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
      body: Container(),
    );
  }
}
