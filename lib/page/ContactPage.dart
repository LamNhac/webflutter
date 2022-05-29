import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webflutter/navbar/Footer.dart';
import 'package:webflutter/navbar/Header.dart';
import 'package:webflutter/router/RoutesName.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                                Navigator.pushNamed(context, RoutesName.BLOG_PAGE)
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
            ),
            Footer()
          ],
        ),
      ),
    );
  }
}