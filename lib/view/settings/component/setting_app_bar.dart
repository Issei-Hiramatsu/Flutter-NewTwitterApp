import 'package:flutter/material.dart';

class TwitterSettingAppBar extends StatelessWidget with PreferredSizeWidget {
  TwitterSettingAppBar({
    required this.titleSpace,
  });

  final String titleSpace;

  //TODO: 適切なPreferredSizeを調べる
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        onPressed: () {},
      ),
      title: Column(children: [
        Text(
          titleSpace,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        const Text(
          '@' + '(names[index])',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
        ),
      ]),
      centerTitle: true,
      actions: [
        TextButton(
          onPressed: () {},
          child: const Text(
            '完了',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
      ],
      backgroundColor: Colors.white,
    );
  }
}
