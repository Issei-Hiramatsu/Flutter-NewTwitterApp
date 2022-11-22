import 'package:flutter/material.dart';

class TwitterSliverAppBar extends StatelessWidget {
  const TwitterSliverAppBar({
    required this.titleSpace,
    required this.iconSpace,
    required this.iconAction,
    this.bottomSpace,
  });

  final Widget titleSpace;
  final IconData iconSpace;
  final Function iconAction;
  //Tabが欲しい場合のみ
  final Widget? bottomSpace;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        pinned: false,
        floating: true,
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
          preferredSize: const Size.fromHeight(0.0),
          //この書き方でいいのか
          child: bottomSpace == null
              ? Container(
                  color: Colors.grey.shade200,
                  height: 1.0,
                )
              : bottomSpace as Widget,
        )); // SliverAppBar;
  }
}
