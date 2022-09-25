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
                          width: 600,
                          height: 600,
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
            Footer()
          ],
        ),
      ),
    );
  }
}