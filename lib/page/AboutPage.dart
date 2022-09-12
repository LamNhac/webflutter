import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webflutter/navbar/Footer.dart';
import 'package:webflutter/navbar/Header.dart';
import 'package:webflutter/router/RoutesName.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Wrap(
          direction: Axis.horizontal,
          children: [
            Column(
              children: [
                const Center(child: Header()),
                Container(
                        margin: EdgeInsets.all(20),
                        child: Text("ABOUT", style: GoogleFonts.mali(fontSize: 40, color: Colors.black, fontWeight: FontWeight.w500)),
                        ),
                DefaultTextStyle(
                  style: TextStyle(color: Colors.black),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(20),
                        child: Wrap(
                          direction: Axis.horizontal,
                          alignment: WrapAlignment.spaceEvenly,
                          children: [
                            Image(image: const AssetImage(
                            "assets/imgPage/anhabout.jpg",
                            ),
                            width: 500,
                            height: 500,
                            fit: BoxFit.cover,
                          ),
                            Container(
                              margin: EdgeInsets.only(top:100,left: 100),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Chào mọi người!', style: GoogleFonts.mali(fontSize: 30, color: Colors.black, fontWeight: FontWeight.w400)),
                                  Text('Mình là Luân, đang sinh sống ở Biên Hòa và đang học ở DNTU', style: GoogleFonts.mali(fontSize: 25, color: Colors.black, fontWeight: FontWeight.w300)),
                                  Text('Mình đã bắt đầu thích đam mê máy tính hồi còn bé', style: GoogleFonts.mali(fontSize: 25, color: Colors.black, fontWeight: FontWeight.w300)),
                                  Text('và bây giờ mình đang trở thành 1 coder', style: GoogleFonts.mali(fontSize: 25, color: Colors.black, fontWeight: FontWeight.w300))
                                ],
                              ),
                            ),
                          
                          ],
                          
                      ),)
                    ],
                
                  ),
                ),
                Footer()      
              
              ],
            ),
          ],
        ),
      ),
    );
  }
}