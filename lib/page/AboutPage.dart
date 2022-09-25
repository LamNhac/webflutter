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

                  SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: Text("ABOUT", style: GoogleFonts.mali(fontSize: 40, color: Colors.black, fontWeight: FontWeight.w500,))),
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: Wrap(

                      runAlignment : WrapAlignment.center,
                      spacing: 50,
                      runSpacing: 50,
                        children: [
                            
                            const Image(
                              image: AssetImage("assets/imgPage/anhabout.jpg",),
                              width: 500,
                              height: 500,
                              fit: BoxFit.cover),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Chào mọi người!', style: GoogleFonts.mali(fontSize: 30, color: Colors.black, fontWeight: FontWeight.w400)),
                                const SizedBox(
                                  height: 30,
                                ),
                                Text('Mình là Luân, đang sinh sống ở Biên Hòa và đang học ở DNTU', style: GoogleFonts.mali(fontSize: 22, color: Colors.black, fontWeight: FontWeight.w300)),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text('Mình đã đam mê máy tính và đang trở thành 1 coder', style: GoogleFonts.mali(fontSize: 22, color: Colors.black, fontWeight: FontWeight.w300)),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text('Khi còn nhỏ mình đã bắt đầu tìm hiểu về ngôn ngữ lập trình', style: GoogleFonts.mali(fontSize: 22, color: Colors.black, fontWeight: FontWeight.w300)),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text('Dần dần trở nên thích và có ý định theo muốn lập trình', style: GoogleFonts.mali(fontSize: 22, color: Colors.black, fontWeight: FontWeight.w300)),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text('Mình đã trải qua và sử dụng 1 số framework như Flask, ASP.NET và React Native', style: GoogleFonts.mali(fontSize: 22, color: Colors.black, fontWeight: FontWeight.w300)),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text('Trong lần tìm hiểu mobile thì mình đã biết Flutter và đang muốn phát triển Flutter', style: GoogleFonts.mali(fontSize: 22, color: Colors.black, fontWeight: FontWeight.w300)),
                              ],
                            )
                            

                          ],
                        
                     
                      ),
                  ),
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