import 'package:flutter/material.dart';
import 'package:nft/animations/animations.dart';

import '../size_config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.title,
    required this.clicked,
    this.width = double.infinity,
    this.intervalStart = 0,
  }) : super(key: key);
  final String title;
  final double width, intervalStart;
  final GestureTapCallback clicked;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        onTap: clicked,
        borderRadius: BorderRadius.circular(8),
        child: Ink(
          width: width,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color(0xff3000ff),
          ),
          child: Container(
            alignment: Alignment.center,
            child: FadeAnimation(
              intervalStart: intervalStart,
              child: Text(
                title,
                style: TextStyle(
                    fontSize: getProScreenHeight(20),
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
