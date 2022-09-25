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
                      Container(
                        child: Text('Chào mọi người ', style: GoogleFonts.mali(fontSize: 30, color: Color.fromARGB(255, 248, 243, 243), 
                      fontWeight: FontWeight.w400,
                      )
                      
                    ),
                    ),
                      Text('Blog của mình đây!', style: GoogleFonts.mali(fontSize: 30, color: Color.fromARGB(255, 248, 243, 243), fontWeight: FontWeight.w300),)
                    
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
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.only(top: 60),
                  width: double.infinity,
                    child: Column(
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage("assets/imgPage/anhblog.jpg"),
                          radius: 100,
                        ),
                        Column(
                          children: [
                          Text('Chào bạn!',style: GoogleFonts.mali(fontSize: 30, color: Colors.black, fontWeight: FontWeight.w400),),
                          Text('Mình là Luân và đang là sinh viên năm 3 DNTU ', style: GoogleFonts.mali(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w300),),
                          Text('Nếu bạn đã đến web này thì chúng ta có duyên đấy :D', style: GoogleFonts.mali(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w300),),
                          ],
                        ),
                       
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Text('Code by Flutter',style: GoogleFonts.mali(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w300, fontStyle: FontStyle.italic),),
                        ),

                      ],
                    ),
                      ),
                    ),
                  ),

            const Divider(),

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

            const Divider(),
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  Wrap(
                    runAlignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,

                    children: [
                       Container(
                        padding: const EdgeInsets.all(20),
                         child: const Image(
                          image:  AssetImage("assets/imgPage/anhcontact.jpg",),
                          width: 500,
                          height: 500,
                          fit: BoxFit.cover,
                          ),
                       ),
                        Container(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              
                              Text('CONTACT', style: GoogleFonts.mali(fontSize: 30, color: Colors.black, fontWeight: FontWeight.w600),),
                              const SizedBox(
                                height: 25,
                              ),
                              Text('Email: ngodinhluan567@gmail.com', style: GoogleFonts.mali(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w300),),
                              Text('Phone: 0329924722', style: GoogleFonts.mali(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w300),),
                              Text('Address: Khu phố 4B, Phường Trảng Dài, TP Biên Hòa, Tỉnh Đồng Nai', style: GoogleFonts.mali(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w300),),
                      
                            ],
                          ),
                        ),
                      
                  

                      

                              ],
                              
        
                            ),
                ],
              ),
            ),
            const Footer(),

           ]
       
       )
    )
    );
  }
}