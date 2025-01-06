import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopino/feacher/product/widget/sizedWidget.dart';

class Productscreen extends StatefulWidget {
   const Productscreen({super.key});

  @override
  State<Productscreen> createState() => _ProductscreenState();
}

class _ProductscreenState extends State<Productscreen> {
   String selected = '2/3';

  void changeSelected(String newSize){
    setState(() {
      selected = newSize;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: CupertinoButton(
          child: Icon(
            CupertinoIcons.back,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "Product Screen",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          CupertinoButton(
            child: Icon(CupertinoIcons.heart),
            onPressed: () {},
          )
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'images/pic4.png',
                    height: 300,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  )),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "stylish jeans cloths",
                    style: GoogleFonts.exo2(
                        fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "\$120.4",
                    style: GoogleFonts.exo2(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "4.5",
                    style: GoogleFonts.exo2(fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "(150 Reviews)",
                    style: GoogleFonts.exo2(color: Colors.grey),
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Description",
                style:
                    GoogleFonts.exo2(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
                style: GoogleFonts.exo2(color: Colors.grey),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "size",
                style:
                    GoogleFonts.exo2(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Sizedwidget(
                    title: '2/3',
                    selected: selected == '2/3',
                    ontab: () => changeSelected('2/3'),
                  ),
                  Sizedwidget(
                    title: '4/5',
                    selected: selected == '4/5',
                    ontab: () => changeSelected('4/5'),
                  ),
                  Sizedwidget(
                    title: '6/7',
                    selected: selected == '6/7',
                    ontab: () => changeSelected('6/7'),
                  ),
                  Sizedwidget(
                    title: '8/9',
                    selected: selected == '8/9',
                    ontab: () => changeSelected('8/9'),
                  ),
                  Sizedwidget(
                    title: '10/11',
                    selected: selected == '10/11',
                    ontab: () => changeSelected('10/11'),
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      padding: EdgeInsets.symmetric(vertical: 12)),
                  onPressed: () {},
                  child: Text(
                    "Add to Bag",
                    style: GoogleFonts.exo2(
                        fontSize: 16, fontWeight: FontWeight.w600),
                  ))
            ],
          ),
        ),
      )),
    );
  }
}
