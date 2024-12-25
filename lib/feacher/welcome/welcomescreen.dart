import 'package:flutter/material.dart';
import 'package:shopino/feacher/welcome/widget/card1.dart';
import 'package:shopino/feacher/welcome/widget/card2.dart';

class Welcomescreen extends StatelessWidget {
  const Welcomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    final hightscreen = MediaQuery.of(context).size.height;
    final widthscreen = MediaQuery.of(context).size.width;
    return Scaffold(
      body: BackWidget(screenwidth: widthscreen, screenhigt: hightscreen),
    );
  }
}

class BackWidget extends StatelessWidget {
  final double screenwidth;
  final double screenhigt;
  const BackWidget({super.key, required this.screenwidth, required this.screenhigt,});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card1(widthscreen: screenwidth, hightscreen: screenhigt),
          Card2(screenwidth: screenwidth, screenhight: screenhigt,)
        ],
      )
    ],);
  }
}