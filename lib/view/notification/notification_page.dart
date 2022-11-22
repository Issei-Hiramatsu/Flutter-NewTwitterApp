import 'package:flutter/material.dart';

import '../../component/app_bar/sliver_app_bar.dart';
import '../../component/bottom_navigation_bar.dart';

class MessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, //statusbarと色が被っているため
      body: DefaultTabController(
          length: 3,
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                TwitterSliverAppBar(
                  titleSpace: const Text('通知'),
                  iconSpace: Icons.settings_outlined,
                  iconAction: () {},
                  bottomSpace: const TabBar(tabs: [
                    Tab(text: '野球'),
                    Tab(text: 'サッカー'),
                    Tab(text: 'テニス'),
                  ]),
                ),
              ];
            },
            body: const TabBarView(
              children: [
                //Tabごとにウィジェットを設定する
                Center(
                  child: Text('野球', style: TextStyle(fontSize: 32.0)),
                ),
                Center(
                  child: Text('サッカー', style: TextStyle(fontSize: 32.0)),
                ),
                Center(
                  child: Text('テニス', style: TextStyle(fontSize: 32.0)),
                ),
              ],
            ),
          )),
      bottomNavigationBar: TwitterBottomNavigationBar(),
    );
  }
}
