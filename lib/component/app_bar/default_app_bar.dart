import 'package:flutter/material.dart';

class TwitterDefaultAppBar extends StatelessWidget with PreferredSizeWidget {
  const TwitterDefaultAppBar({
    required this.titleSpace,
    required this.bottomSpace,
    required this.iconSpace,
    required this.iconAction,
  });

  final Widget titleSpace;
  final Widget bottomSpace;
  final IconData iconSpace;
  final Function iconAction;

  //TODO: 適切なPreferredSizeを調べる
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return SizedBox(
              width: 30.0,
              height: 30.0,
              child: TextButton(
                onPressed: () {},
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    // image: DecorationImage(
                    //   fit: BoxFit.fitHeight,
                    //   image: AssetImage(''),
                    // ),
                  ),
                ),
              ),
            );
          },
        ),
        title: titleSpace,
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(
                iconSpace,
                size: 28,
                color: Colors.black,
              ),
              onPressed: () {
                iconAction;
              }),
        ],
        backgroundColor: Colors.white,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(0.0),
          child: bottomSpace,
        ) //AppBar;
        );
  }
}
