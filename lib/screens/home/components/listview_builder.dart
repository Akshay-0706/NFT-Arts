import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder(
      {Key? key,
      required this.startIndex,
      required this.duration,
      required this.itemCount})
      : super(key: key);
  final int startIndex, duration, itemCount;

  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  late ScrollController scrollController;

  @override
  void initState() {
    super.initState();

    scrollController = ScrollController();

    scrollController.addListener(() {
      if (scrollController.position.atEdge) {
        autoScroll();
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      autoScroll();
    });
  }

  autoScroll() {
    final currentScroll = scrollController.offset;
    final scrollEnd = scrollController.position.maxScrollExtent;
    scheduleMicrotask(() {
      scrollController.animateTo(
        currentScroll == scrollEnd ? 0 : scrollEnd,
        duration: Duration(seconds: widget.duration),
        curve: Curves.linear,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Transform.rotate(
          angle: 1.96 * pi,
          child: SizedBox(
            height: 130,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              controller: scrollController,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/details",
                        arguments: widget.startIndex + index);
                  },
                  child: Image.asset(
                    "assets/nfts/${widget.startIndex + index}.png",
                    width: 130,
                  ),
                );
              },
              itemCount: widget.itemCount,
            ),
          ),
        )
      ],
    );
  }
}
