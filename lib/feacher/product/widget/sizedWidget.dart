import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sizedwidget extends StatelessWidget {
  final String title;
  final bool selected;
  final VoidCallback ontab;
  const Sizedwidget({super.key, required this.title, required this.selected, required this.ontab});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Material(
        color: selected ? Colors.black : Colors.grey.shade300,
        borderRadius: BorderRadius.circular(8),
        child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: ontab,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 6,horizontal: 12),
            child: Text(title,
            style: GoogleFonts.exo2(fontWeight: FontWeight.w500,color: selected ? Colors.white : Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}