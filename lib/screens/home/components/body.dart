import 'package:flutter/material.dart';
import 'package:nft/animations/animations.dart';
import 'package:nft/screens/home/components/listview_builder.dart';
import 'package:nft/size_config.dart';

import '../../../components/default_button.dart';
import 'info.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double defaultHeight = SizeConfig.screenHeight / 839;
    return Stack(
      children: [
        Positioned.fill(
          child: ShaderMask(
            blendMode: BlendMode.dstOut,
            shaderCallback: (rect) {
              return LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.transparent,
                  Colors.black.withOpacity(0.8),
                  Colors.black.withOpacity(0.9),
                  Colors.black,
                ],
                stops: [
                  0,
                  defaultHeight * 0.55,
                  defaultHeight * 0.65,
                  defaultHeight * 0.70,
                  1
                ],
              ).createShader(rect);
            },
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  ListViewBuilder(
                    startIndex: 1,
                    duration: 25,
                    itemCount: 12,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListViewBuilder(
                    startIndex: 13,
                    duration: 35,
                    itemCount: 13,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListViewBuilder(
                    startIndex: 26,
                    duration: 45,
                    itemCount: 13,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListViewBuilder(
                    startIndex: 39,
                    duration: 30,
                    itemCount: 12,
                  ),
                ],
              ),
            ),
          ),
        ),
        const HomeInfo(),
      ],
    );
  }
}
