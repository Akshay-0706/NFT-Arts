import 'package:flutter/material.dart';

class NFTImage extends StatelessWidget {
  const NFTImage({
    Key? key,
    required this.defaultHeight,
    required this.index,
  }) : super(key: key);

  final double defaultHeight;
  final int index;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.dstOut,
      shaderCallback: (rect) {
        return LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.transparent,
              Colors.transparent,
              Colors.black.withOpacity(0.5),
              Colors.black.withOpacity(0.7),
              Colors.black.withOpacity(0.9),
            ],
            stops: [
              0,
              defaultHeight * 0.85,
              defaultHeight * 0.90,
              defaultHeight * 0.95,
              1
            ]).createShader(rect);
      },
      child: Image.asset(
        "assets/nfts/$index.png",
      ),
    );
  }
}
