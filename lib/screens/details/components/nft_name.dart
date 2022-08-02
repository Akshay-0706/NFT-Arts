import 'package:flutter/material.dart';
import 'package:nft/animations/animations.dart';

import '../../../size_config.dart';
import '../details.dart';
import 'nft_info.dart';

class NFTName extends StatelessWidget {
  const NFTName({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProScreenWidth(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: getProScreenHeight(40),
          ),
          FadeAnimation(
            intervalStart: 0.3,
            child: Text(
              "Monkey #72${index}",
              style: TextStyle(
                fontSize: getProScreenWidth(26),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: getProScreenHeight(10),
          ),
          FadeAnimation(
            intervalStart: 0.35,
            child: Text(
              "Owned by Gennady",
              style: TextStyle(
                  fontSize: getProScreenWidth(18), color: Colors.white70),
            ),
          ),
          SizedBox(
            height: getProScreenHeight(50),
          ),
          const FadeAnimation(
            intervalStart: 0.4,
            child: NFTInfo(),
          ),
        ],
      ),
    );
  }
}
