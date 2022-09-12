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
                  "assets/imgPage/background.jpg",
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
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              
                alignment: Alignment.center,
                child: Center(
                  
                  child: Wrap(
                    direction: Axis.vertical,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 50,
                    children: [
                      Text('Chào mọi người ', style: GoogleFonts.mali(fontSize: 50, color: Color.fromARGB(255, 248, 243, 243), 
                      fontWeight: FontWeight.w400,
                    ),
                    ),
                      Text('Blog của mình đây!', style: GoogleFonts.mali(fontSize: 40, color: Color.fromARGB(255, 248, 243, 243), fontWeight: FontWeight.w300),)
                    
                    ],
                  
                )
                  ),
              ),
                  
            
         
        const Header(),

      ],
              
            ),
            const Divider(),
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
                  margin: const EdgeInsets.only(left: 60),
                  child: Center(
                    child: Wrap(
                      alignment: WrapAlignment.spaceBetween,
                      direction: Axis.horizontal,
                      runSpacing: 35,
                      spacing: 100,
                      children: [
                         const Align(
                              alignment: Alignment.center,
                              child: CircleAvatar(
                                backgroundImage: AssetImage("assets/imgPage/anhblog.jpg"),
                                radius: 100,
                              )
                            ),
                        Center(
                          child: DefaultTextStyle (
                            style: GoogleFonts.mali(fontSize: 40, color: Colors.black, fontWeight: FontWeight.w300),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Chào bạn!'),
                                Text('Mình là Luân, đang là sinh viên năm 3 DNTU ', style: GoogleFonts.mali(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w300),),
                                Text('Nếu bạn đã đến web này thì chúng ta có duyên đấy :D', style: GoogleFonts.mali(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w300),),
                                
                            ]),
                          ),
                        ),
                       
                        
                        Align(
                            alignment: Alignment(0.9,-1),
                            child: DefaultTextStyle(
                              style: GoogleFonts.mali(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w300),
                              child: const Text('Code by Flutter'))),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const Divider(),
            Center(
              child: Wrap(
                direction: Axis.horizontal,
                children: [
                  Column(
                    children: [
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
                      
                  
                  ],
                ),
              ],
              ),
            ),
            const Divider(),
            Center(
              child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(20),
                      child: Wrap(
                        alignment: WrapAlignment.spaceEvenly,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Image(image: const AssetImage(
                            "assets/imgPage/anhcontact.jpg",
                          ),
                          width: 700,
                          height: 700,
                          fit: BoxFit.cover,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 50,top: 50),
                            child: DefaultTextStyle(
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
                          ),
        
                          
        
                        ],
                        
        
                      ),
                    ),
                  ],
              ),
          ],
        ),
            ),
            const Footer(),

           ],
         ),
       )
       );
  }
}