import 'package:flutter/material.dart';

class TwitterSliverAppBar extends StatelessWidget {
  const TwitterSliverAppBar({
    required this.titleSpace,
    required this.iconSpace,
    required this.iconAction,
  });

  final Widget titleSpace;
  final IconData iconSpace;
  final Function iconAction;

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
        backgroundColor: Colors.blue,
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(0.0),
            child: Container(
              color: Colors.grey.shade200,
              height: 1.0,
            ))); // SliverAppBar;
  }
}
