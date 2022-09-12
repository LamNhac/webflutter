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
            const Center(
                child: Header()),
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
            Footer()
          ],
        ),
      ),
    );
  }
}