import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webflutter/navbar/Footer.dart';
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
                Center(
                    child:Container(
                    
                      padding: const EdgeInsets.all(20),
                      child: Align(
                        alignment: const Alignment(0.9,-1),
                        child : Column(
                          children: [
                            SizedBox(
                              width: 500,
                              height: 100,
                              child: Row(
                                children: [
                                  TextButton(
                                  child: Text('Home', style: GoogleFonts.roboto(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w300),),
                                  onPressed: ()=>
                                    Navigator.pushNamed(context, RoutesName.HOME_PAGE)
                                  ),
                                  const Spacer(),
                                  TextButton(
                                  child: Text('Blog', style: GoogleFonts.roboto(fontSize: 20, color: Colors.black,fontWeight: FontWeight.w300),),
                                  onPressed: ()=> 
                                    Navigator.pushNamed(context, RoutesName.BLOG_PAGE),
                                  ),
                                  const Spacer(),
                                  TextButton(
                                  child: Text('About', style: GoogleFonts.roboto(fontSize: 20, color: Colors.black,fontWeight: FontWeight.w300),),
                                  onPressed: ()=>  
                                    Navigator.pushNamed(context, RoutesName.ABOUT_PAGE)
                                  ),
                                  const Spacer(),
                                  TextButton(
                                  child: Text('Contact', style: GoogleFonts.roboto(fontSize: 20, color: Colors.black,fontWeight: FontWeight.w300),),
                                  onPressed: ()=>  
                                    Navigator.pushNamed(context, RoutesName.CONTACT_PAGE)
                                  ),
                                ],)
                                ),
                                
                          ],
                        ),          
                        )
                      
                    )
                  
              
            ),
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