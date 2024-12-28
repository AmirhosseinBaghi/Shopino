import 'package:flutter/material.dart';

class Card2 extends StatelessWidget {
  final double screenwidth;
  final double screenhight;
  const Card2({super.key, required this.screenwidth, required this.screenhight});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:8.0),
      child: SizedBox(
        width: screenwidth * 0.499,
        height: screenhight * 0.4,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(28),
            bottomLeft: Radius.circular(28),
            bottomRight: Radius.circular(28),
          ),
          child: Image.asset('images/pic2.png',fit: BoxFit.cover,)),
      ),
    );
  }
}