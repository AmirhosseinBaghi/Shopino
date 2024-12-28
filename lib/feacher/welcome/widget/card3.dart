import 'package:flutter/material.dart';

class Card3 extends StatelessWidget {
  final double screenwidth;
  final double screenhight;
  const Card3({super.key, required this.screenwidth, required this.screenhight});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:8.0),
      child: Container(
        width: screenwidth * 0.48,
        height: screenhight * 0.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(60),
            bottomLeft: Radius.circular(28),
            bottomRight: Radius.circular(28),
            
            ),
        border: Border.all(color: Theme.of(context).colorScheme.surface, width: 7),
        image: DecorationImage(image: AssetImage("images/pic3.png"),fit: BoxFit.cover)
       ),
      ),
    );
  }
}