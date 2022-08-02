import 'package:flutter/material.dart';
import 'package:nft/animations/animations.dart';

import '../../../size_config.dart';
import '../../../widgets/blur_container.dart';

class NFTImageInfo extends StatelessWidget {
  const NFTImageInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      left: 10,
      child: FadeAnimation(
        intervalStart: 0.2,
        child: BlurContainer(
            child: Container(
          width: 160,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white.withOpacity(0.1),
          ),
          alignment: Alignment.center,
          child: Text(
            "Digital NFT Art",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: getProScreenHeight(14),
            ),
          ),
        )),
      ),
    );
  }
}
