import 'package:flutter/material.dart';

class TwitterAppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('アイコン'),
                const Text('名前'),
                const Text('@name'),
                Row(
                  children: [
                    const Text('フォロー'),
                    const Text('フォロワー'),
                  ],
                )
              ],
            ),
          ),
          const ListTile(
            title: Text('プロフィール'),
            leading: Icon(Icons.person_outline),
          ),
          const ListTile(
            title: Text('トッピク'),
            leading: Icon(Icons.comment_outlined),
          ),
          const ListTile(
            title: Text('ブックマーク'),
            leading: Icon(Icons.bookmark_outline),
          ),
          const ListTile(
            title: Text('リスト'),
            leading: Icon(Icons.article_outlined),
          ),
          const ListTile(
            title: Text('Twitterサークル'),
            leading: Icon(
              Icons.groups,
            ),
          ),
        ],
      ),
    );
  }
}
