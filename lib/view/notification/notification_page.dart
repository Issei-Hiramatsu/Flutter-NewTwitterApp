import 'package:flutter/material.dart';

import '../../component/app_bar/sliver_app_bar.dart';
import '../../component/bottom_navigation_bar.dart';

//TODO 変更した色をもとに戻す

class _SliverTabBarDelegate extends SliverPersistentHeaderDelegate {
  const _SliverTabBarDelegate({
    required this.tabBar,
  });

  final TabBar tabBar;

  @override
  double get minExtent => tabBar.preferredSize.height;
  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      child: tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverTabBarDelegate oldDelegate) {
    return false;
  }
}

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, //statusbarと色が被っているため
      body: SafeArea(
        bottom: false,
        child: DefaultTabController(
            length: 3,
            child: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  TwitterSliverAppBar(
                    titleSpace:
                        const Text('通知', style: TextStyle(color: Colors.black)),
                    iconSpace: Icons.settings_outlined,
                    iconAction: () {},
                  ),
                  const SliverPersistentHeader(
                      pinned: true,
                      delegate: _SliverTabBarDelegate(
                          tabBar: TabBar(
                        labelColor: Colors.black,
                        indicatorColor: Colors.blue,
                        tabs: [
                          Tab(text: 'すべて'),
                          Tab(text: '認証済み'),
                          Tab(text: '@ツイート'),
                        ],
                      ))),
                ];
              },
              body: const TabBarView(
                children: [
                  //TODO Tabごとにウィジェットを設定する
                  Center(
                    child: Text('', style: TextStyle(fontSize: 32.0)),
                  ),
                  Center(
                    child: Text('', style: TextStyle(fontSize: 32.0)),
                  ),
                  Center(
                    child: Text('', style: TextStyle(fontSize: 32.0)),
                  ),
                ],
              ),
            )),
      ),
      bottomNavigationBar: TwitterBottomNavigationBar(),
    );
  }
}
