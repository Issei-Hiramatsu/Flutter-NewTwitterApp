import 'package:flutter/material.dart';

import '../../component/app_bar/default_app_bar.dart';
import '../../component/app_bar/sliver_app_bar.dart';

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
              return TwitterSliverAppBar(
                titleSpace: Text('通知'),
                iconSpace: Icons.settings_outlined,
                iconAction: () {},
              );
            },
            body: TabBarView(
              children: [
                //Tabごとにウィジェットを設定する
              ],
            ),
          )),
      bottomNavigationBar: TwitterBottomNavigationBar(),
    );
  }
}


//  appBar: TwitterDefaultAppBar(
//         titleSpace: Text('メッセージ'),
//         iconSpace: Icons.settings,
//         iconAction: () {},
//         bottomSpace: Container(
//           decoration: BoxDecoration(
//               color: Colors.grey[100], borderRadius: BorderRadius.circular(16)),
//           child: TextFormField(
//             decoration: const InputDecoration(
//               prefixIcon: Icon(Icons.search_outlined),
//               hintText: 'ダイレクトメッセージを検索',
//               enabledBorder: InputBorder.none,
//               focusedBorder: InputBorder.none,
//             ),
//           ),
//         ),
//       ),