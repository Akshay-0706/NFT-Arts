import 'package:flutter/material.dart';

import '../../../size_config.dart';

class NFTInfo extends StatelessWidget {
  const NFTInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "3d 5h 32m",
              style: TextStyle(
                fontSize: getProScreenWidth(18),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: getProScreenHeight(10),
            ),
            Text(
              "Remaining Time",
              style: TextStyle(
                  fontSize: getProScreenWidth(14), color: Colors.white70),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "19.6 ETH",
              style: TextStyle(
                fontSize: getProScreenWidth(18),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: getProScreenHeight(10),
            ),
            Text(
              "Highest bid",
              style: TextStyle(
                  fontSize: getProScreenWidth(14), color: Colors.white70),
            ),
          ],
        ),
      ],
    );
  }
}
