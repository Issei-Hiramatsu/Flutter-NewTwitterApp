// import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// import 'setting_app_bar.dart';

// final spProvider = StateProvider<int>((ref) => 0);

// // final trueorfalseProvider = ChangeNotifierProvider((ref) => Test());

// // class Test extends ChangeNotifier {
// //   bool trueorfalse = true;

// //   _returnt() {
// //     trueorfalse = !trueorfalse;
// //     notifyListeners();
// //   }
// // }

// class TrendSettingPage extends ConsumerWidget {
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final TrendSettingPage trueorfalseModel = ref.watch(trueorfalseProvider);
//     return Scaffold(
//       backgroundColor: Colors.white, //statusbarと色が被っているため
//       appBar: TwitterSettingAppBar(titleSpace: '[話題を検索] の設定'),
//       body: Padding(
//         padding: const EdgeInsets.only(left: 20.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(''),
//             SwitchListTile(
//               title: Text('現在の場所のコンテンツを表示'),
//               onChanged: (bool value) {},
//               value: trueorfalseProvider.tureorfalse,
//             ),
//             Text('場所を調べる')
//           ],
//         ),
//       ),
//     );
//   }
// }


// // model . 値　= 変えたい値
// // model . 関数(context),