import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webflutter/navbar/Header.dart';


class LayoutBackground extends StatelessWidget {
  const LayoutBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(image: const AssetImage(
          "assets/background.jpg",
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        fit: BoxFit.cover,
        ),
        Positioned.fill(
          child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX:8.5, sigmaY: 8.5),
              child: Container(color:Colors.black.withOpacity(0.4)),

        )),
        Align(
            child: Container(
              margin: const EdgeInsets.all(250),
              padding: const EdgeInsets.all(30),
              width: 1500,
              height: 300,
              child: Center(
                 
                child :  Column(
                  children: [
                  Text('Chào mọi người ', style: GoogleFonts.mali(fontSize: 50, color: Colors.white, fontWeight: FontWeight.w400),),
                  const Spacer(),
                  Text('Blog của mình đây!', style: GoogleFonts.mali(fontSize: 40, color: Colors.white, fontWeight: FontWeight.w300),)
                  
                  ],
                  
                )
                ),
                  
            ),
          ),
        const Header(),

      ],
    );
  }
}