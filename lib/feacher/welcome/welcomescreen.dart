import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopino/feacher/welcome/widget/card1.dart';
import 'package:shopino/feacher/welcome/widget/card2.dart';
import 'package:shopino/feacher/welcome/widget/card3.dart';

class Welcomescreen extends StatelessWidget {
  const Welcomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    final hightscreen = MediaQuery.of(context).size.height;
    final widthscreen = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        height: hightscreen,
        child: Stack(children: [
          BackWidget(screenwidth: widthscreen, screenhight: hightscreen),
          FrontWidget(widthscreen: widthscreen)
        ]),
      ),
    );
  }
}

class FrontWidget extends StatelessWidget {
  const FrontWidget({
    super.key,
    required this.widthscreen,
  });

  final double widthscreen;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Theme.of(context).colorScheme.surface,
            Theme.of(context).colorScheme.surface.withOpacity(0)
          
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          stops: [0.9,1.0]
          )
        ),
        child: Column(
          children: [
            SizedBox(height: 16,),
            Text(
              "Welcome to kidstyle!",
              style:
                  GoogleFonts.exo2(color: Colors.black45, fontSize: 22),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                "Get Ready to dress Your littel Ones in Fashion forward outfits.",
                textAlign: TextAlign.center,
                style: GoogleFonts.exo2(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            SizedBox(
              width: widthscreen,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12))),
                    child: Text(
                      "Get Start",
                      style:
                          GoogleFonts.exo2(fontWeight: FontWeight.bold),
                    )),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Alredy have Account?",
                  style: GoogleFonts.exo2(
                      color: Colors.black54, fontSize: 16),
                ),
                SizedBox(width: 4,),
                TextButton(
                  style: ButtonStyle(tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                   onPressed: () {  },
                   child: Text("Login",
                  style: GoogleFonts.exo2(
                      color: Colors.black, fontSize: 16),),
                ),
              ],
            ),
            SizedBox(height: 8,)
          ],
        ),
      ),
    );
  }
}

class BackWidget extends StatelessWidget {
  final double screenwidth;
  final double screenhight;
  const BackWidget({
    super.key,
    required this.screenwidth,
    required this.screenhight,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenhight * 0.9,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card1(widthscreen: screenwidth, hightscreen: screenhight),
              Card2(
                screenwidth: screenwidth,
                screenhight: screenhight,
              )
            ],
          ),
          Positioned(
              bottom: 90,
              right: 0,
              child: Card3(screenwidth: screenwidth, screenhight: screenhight))
        ],
      ),
    );
  }
}
