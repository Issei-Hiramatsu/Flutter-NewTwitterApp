import 'package:flutter/material.dart';

import '../molecule/app_bar/sliver_app_bar.dart';
import '../molecule/app_bar/bottom_navigation_bar.dart';
import '../organism/tweet.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, //statusbarと色が被っているため
      body: SafeArea(
        bottom: false,
        child: CustomScrollView(
          slivers: [
            TwitterSliverAppBar(
              titleSpace: Text('ツイッターアイコン'),
              iconSpace: Icons.auto_awesome,
              iconAction: () {},
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => Column(
                  children: <Widget>[
                    TweetCard(
                      userName: 'Kensin',
                      message: 'Hi',
                    ),
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
