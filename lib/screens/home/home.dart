import 'package:flutter/material.dart';
import '../../size_config.dart';
import 'components/body.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().initialize(context);
    return const Scaffold(
      backgroundColor: Colors.black,
      body: HomeBody(),
    );
  }
}
