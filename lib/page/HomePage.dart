import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webflutter/navbar/Footer.dart';
import 'package:webflutter/navbar/Header.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:  SingleChildScrollView(
         child:  Wrap(
           children: [
            Stack(
              children:[
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
                  Text('Chào mọi người ', style: GoogleFonts.mali(fontSize: 50, color: Color.fromARGB(255, 248, 243, 243), 
                  fontWeight: FontWeight.w400,
                  ),
                  
                  
                  ),
                  const Spacer(),
                  Text('Blog của mình đây!', style: GoogleFonts.mali(fontSize: 40, color: Color.fromARGB(255, 248, 243, 243), fontWeight: FontWeight.w300),)
                  
                  ],
                  
                )
                ),
                  
            ),
          ),
        const Header(),

      ],
              
            ),
            const Divider(),
            Stack(
              children: [
                Center(
          child: Container(
            height: 500,
            width: 1000,
            decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 7,
                  blurRadius: 7,
                  offset:const Offset(3.0,3.0)
                ),
              ]
            ),
            child: Container(
              height: 500,
              width: 1000,
              margin: const EdgeInsets.only(left: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  DefaultTextStyle (
                    style: GoogleFonts.mali(fontSize: 40, color: Colors.black, fontWeight: FontWeight.w300),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Chào bạn!'),
                        Text('Mình là Luân, đang là sinh viên năm 3 DNTU ', style: GoogleFonts.mali(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w300),),
                        Text('Nếu bạn đã đến web này thì chúng ta có duyên đấy :D', style: GoogleFonts.mali(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w300),),
                        
                    ]),
                  ),

                  const Align(
                        alignment: Alignment.centerRight,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/anhblog.jpg"),
                          radius: 100,
                        )
                      ) 
                      ,
                    Align(
                      alignment: Alignment.bottomRight,
                      child: DefaultTextStyle(
                        style: GoogleFonts.mali(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w300),
                        child: const Text('Code by Flutter'))),
                ],
              ),
            ),
          ),
        )
              ],
            ),
            const Divider(),
            Column(
              children: [
                DefaultTextStyle(
          style: TextStyle(color: Colors.black),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                child: Text("ABOUT", style: GoogleFonts.mali(fontSize: 40, color: Colors.black, fontWeight: FontWeight.w500)),
                ),
              Container(
                margin: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image(image: const AssetImage(
                    "assets/anhabout.jpg",
                    ),
                    width: 500,
                    height: 500,
                    fit: BoxFit.cover,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Chào mọi người!', style: GoogleFonts.mali(fontSize: 30, color: Colors.black, fontWeight: FontWeight.w400)),
                      Text('Mình là Luân, đang sinh sống ở Biên Hòa và đang học ở DNTU', style: GoogleFonts.mali(fontSize: 25, color: Colors.black, fontWeight: FontWeight.w300)),
                      Text('Mình đã bắt đầu thích đam mê máy tính hồi còn bé', style: GoogleFonts.mali(fontSize: 25, color: Colors.black, fontWeight: FontWeight.w300)),
                      Text('và bây giờ mình đang trở thành 1 coder', style: GoogleFonts.mali(fontSize: 25, color: Colors.black, fontWeight: FontWeight.w300))
                    ],
                  )
                  ],
                  
              ),)
            ],
        
          ),
        )
              ],
            ),
            const Divider(),
            Column(
              children: [
                Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(image: const AssetImage(
                    "assets/anhcontact.jpg",
                  ),
                  width: 700,
                  height: 700,
                  fit: BoxFit.cover,
                  ),
                  DefaultTextStyle(
                    style: GoogleFonts.mali(fontSize: 30, color: Colors.black, fontWeight: FontWeight.w600),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        
                        Text('CONTACT', style: GoogleFonts.mali(fontSize: 30, color: Colors.black, fontWeight: FontWeight.w600),),
                        Text('Email: ngodinhluan567@gmail.com', style: GoogleFonts.mali(fontSize: 23, color: Colors.black, fontWeight: FontWeight.w300),),
                        Text('Phone: +123456789', style: GoogleFonts.mali(fontSize: 23, color: Colors.black, fontWeight: FontWeight.w300),),
                        Text('Address: Dong Nai Province, Viet Nam', style: GoogleFonts.mali(fontSize: 23, color: Colors.black, fontWeight: FontWeight.w300),),
                  
                      ],
                    ),
                  ),

                  

                ],
                

              ),
            ),
          ],
        )
              ],
            ),
            const Footer(),

           ],
         ),
       )
       );
  }
}