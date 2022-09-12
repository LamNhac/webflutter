import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webflutter/router/RoutesName.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Wrap(
      children: [
        Center(
                child:Container(
                  width: MediaQuery.of(context).size.width,
                 
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
      ],
    );
  }
}