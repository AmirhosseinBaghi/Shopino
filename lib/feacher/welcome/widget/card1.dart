
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Card1 extends StatelessWidget {
  final double widthscreen;
  final double hightscreen;
  const Card1({super.key, required this.widthscreen, required this.hightscreen,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: hightscreen * 0.35,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Colors.brown.shade700,Colors.brown.shade300])
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              height: hightscreen *0.25,
              child: Image.asset('images/pic1.png',),
              ),
            
            Positioned(
              top: 8,
              right: 8,
              child: SizedBox(
                width: widthscreen *0.55,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text('All Kids is Fation',
                  style: GoogleFonts.exo2(
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                   )
                  ),
                  Text('Designed to spark joy and creativity in every child. With a focus on comfort and the quality.',
                  style: GoogleFonts.exo2(color: Colors.black54,
                  fontSize: 15
                   )
                  ),
                ],),
              ),
            )
          ],
        ),
      ),
    );
  }
}