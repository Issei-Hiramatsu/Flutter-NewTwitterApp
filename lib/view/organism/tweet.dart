import 'package:flutter/material.dart';

import '../atom/round_icon.dart';

class TweetCard extends StatelessWidget {
  TweetCard({
    super.key,
    required this.userName,
    required this.message,
  });

  String userName;
  String message;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: 80,
            //アイコン
            child: RoundIconButton(
              iconData: Icons.abc,
              backgroundColor: Colors.blue,
              onPressed: () {},
            )),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(userName),
              Text(message),
            ],
          ),
        ),
      ],
    );
  }
}
