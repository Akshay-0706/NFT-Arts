import 'dart:math';

import 'package:flutter/material.dart';
import 'package:nft/animations/animations.dart';

import '../../../components/default_button.dart';
import '../../../size_config.dart';

class HomeInfo extends StatelessWidget {
  const HomeInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 24,
      right: 24,
      bottom: getProScreenHeight(70),
      child: SizedBox(
        height: getProScreenHeight(150),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FadeAnimation(
              intervalStart: 0.3,
              child: Text(
                "Art with NFTs",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: getProScreenWidth(25),
                ),
              ),
            ),
            SizedBox(
              height: getProScreenHeight(10),
            ),
            FadeAnimation(
              intervalStart: 0.4,
              child: Text(
                "Check out this raffle for you guys only! check them out now",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: getProScreenHeight(18),
                  height: 1.2,
                ),
              ),
            ),
            const Spacer(),
            FadeAnimation(
              intervalStart: 0.5,
              child: DefaultButton(
                title: "Discover",
                width: getProScreenWidth(140),
                clicked: () {
                  Navigator.pushNamed(context, "/details",
                      arguments: randomInt(1, 50));
                },
                intervalStart: 0.6,
              ),
            ),
          ],
        ),
      ),
    );
  }

  int randomInt(int min, int max) {
    return Random().nextInt(max - min) + min;
  }
}
