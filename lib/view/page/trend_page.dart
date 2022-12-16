import 'package:flutter/material.dart';

import '../molecule/app_bar/sliver_app_bar.dart';
import '../molecule/app_bar/bottom_navigation_bar.dart';

class TrendPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, //statusbarと色が被っているため
      body: SafeArea(
        bottom: false,
        child: CustomScrollView(
          slivers: [
            TwitterSliverAppBar(
              titleSpace: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(16)),
                child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.search_outlined),
                    hintText: 'キーワード検索',
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
              iconSpace: Icons.settings_outlined,
              iconAction: () {},
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => Column(
                  children: <Widget>[
                    //トレンド関係配置予定
                  ],
                ),
                childCount: 1,
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: TwitterBottomNavigationBar(),
    );
  }
}
