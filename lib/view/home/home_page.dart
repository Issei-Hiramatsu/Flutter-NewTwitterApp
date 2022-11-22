import 'package:flutter/material.dart';

import '../../component/app_bar/sliver_app_bar.dart';
import '../../component/bottom_navigation_bar.dart';

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
                    Row(
                      children: [
                        Container(
                          //アイコン
                          child: Text('アイコン'),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Row(
                                //名前
                                children: [
                                  Text('names[index]'),
                                  Text('@' + '(names[index])'),
                                ],
                              ),
                              Container(
                                  //ツイート
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'ツイート',
                                  )),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  //各種ボタン
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.chat_bubble_outline),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.favorite_border),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.autorenew),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.upgrade_outlined),
                                    ),
                                  ]),
                            ],
                          ),
                        ),
                      ],
                    )
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
