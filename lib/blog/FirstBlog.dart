import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webflutter/navbar/Footer.dart';
import 'package:webflutter/navbar/Header.dart';

class FirstBlog extends StatelessWidget {
  const FirstBlog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Wrap(
          children: [
            Header(),
            Center(
              child: Wrap(
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.start,
                direction: Axis.vertical,
                children:[ 
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DefaultTextStyle(
                          style: GoogleFonts.mali(fontSize: 40, color: Colors.black, fontWeight: FontWeight.w400),
                          child: Text("Một ngày ở Sài Gòn")),
                        DefaultTextStyle(
                          style: GoogleFonts.mali(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w200),
                          child: Text("29/5/2001")),
                  ],),),
                  
                  Text(""),
                  Container(
                    padding: EdgeInsets.all(20),
                    width: 1000,
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.start,
                      runSpacing: 30,
                      spacing: 10,
                      children: [
                      DefaultTextStyle(
                        style: GoogleFonts.mali(fontSize: 25, color: Colors.black, fontWeight: FontWeight.w300),
                        child: Text("Mình với bạn mình có đi chơi ở Thảo Cầm Viên và vòng quanh một số nơi")),
                      DefaultTextStyle(
                        style: GoogleFonts.mali(fontSize: 25, color: Colors.black, fontWeight: FontWeight.w300),
                        child: Text("Các bạn cùng xem chúng mình có gì nhé!")),
                      const Image(image:  AssetImage(
                                 "assets/imgBlog/firstBlog/anhfirstblog1.jpg",
                              ),
                                width: 1000,
                                height: 600,
                                fit: BoxFit.fill,
                                ),
                      const Image(image:  AssetImage(
                                 "assets/imgBlog/firstBlog/anhfirstblog2.jpg",
                              ),
                                width: 1000,
                                height: 600,
                                fit: BoxFit.fill,
                                ),
                                const Image(image:  AssetImage(
                                 "assets/imgBlog/firstBlog/anhfirstblog3.jpg",
                              ),
                                width: 1000,
                                height: 600,
                                fit: BoxFit.fill,
                                ),
                                const Image(image:  AssetImage(
                                 "assets/imgBlog/firstBlog/anhfirstblog4.jpg",
                              ),
                                width: 1000,
                                height: 600,
                                fit: BoxFit.fill,
                                ),
                                const Image(image:  AssetImage(
                                 "assets/imgBlog/firstBlog/anhfirstblog5.jpg",
                              ),
                                width: 1000,
                                height: 600,
                                fit: BoxFit.fill,
                                ),
                    ]),
                  )
                  ]
                ),
            ),
               
            
            Footer()
            
        ],),
      ),
    );
  }
}