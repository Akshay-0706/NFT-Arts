import 'package:flutter/material.dart';
import 'package:nft/animations/animations.dart';
import 'package:nft/components/default_button.dart';
import 'package:nft/screens/details/components/body.dart';
import 'package:nft/widgets/blur_container.dart';

import '../../size_config.dart';
import 'components/nft_iamge.dart';
import 'components/nft_image_info.dart';
import 'components/nft_name.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().initialize(context);
    final int index = ModalRoute.of(context)!.settings.arguments as int;
    final double defaultHeight = SizeConfig.screenHeight / 839;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ScaleAnimation(
                  child: NFTImage(defaultHeight: defaultHeight, index: index)),
              const NFTImageInfo()
            ],
          ),
          NFTName(index: index),
          const Spacer(),
          FadeAnimation(
            intervalStart: 0.6,
            child: Padding(
                padding: EdgeInsets.only(
                    left: getProScreenWidth(20),
                    right: getProScreenWidth(20),
                    bottom: getProScreenHeight(40)),
                child: DefaultButton(
                  title: "Place bid",
                  clicked: () {},
                )),
          ),
        ],
      ),
    );
  }
}
