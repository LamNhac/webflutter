import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webflutter/navbar/Footer.dart';
import 'package:webflutter/navbar/Header.dart';
import 'package:webflutter/router/RoutesName.dart';

class UnknownPage extends StatelessWidget {
  const UnknownPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Stack(
          children: [
            Wrap(
                children: [
                  const Header(),
                  Center(
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          DefaultTextStyle(
                            style: GoogleFonts.mali(fontSize: 40, color: Colors.black, fontWeight: FontWeight.w400),
                            child: Text('Úi, Bạn nhầm trang rồi!')),
                          DefaultTextStyle(
                            style: GoogleFonts.mali(fontSize: 40, color: Colors.black, fontWeight: FontWeight.w400),
                            child: Text('Xin lỗi, chúng tôi không thể tìm thấy trang đó')),
                          Text(""),
                          ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            onPrimary: Colors.white,
                            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                          ),
                            onPressed: () =>Navigator.pushNamed(context, RoutesName.HOME_PAGE),
                            child: DefaultTextStyle(
                              style :GoogleFonts.mali(fontSize: 40, color: Colors.white, fontWeight: FontWeight.w400),
                              child: const Text('Trang chủ')),
          ), 
                        ],
                      ),
                    ),
                  ),
                  Footer()
                  
                
              
              ]
            ),
          ],
        ),
      )
    );
  }
}