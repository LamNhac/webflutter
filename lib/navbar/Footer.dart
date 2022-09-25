

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:webflutter/router/RoutesName.dart';
import 'package:url_launcher/url_launcher.dart';
class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:60),
      color: Color.fromARGB(207,238,241,255),
      width: MediaQuery.of(context).size.width,
      height: 250,
      child: Wrap(
        alignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        direction: Axis.horizontal,
        children: [

            Text("NGO DINH LUAN",style: GoogleFonts.mali(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w400,),textAlign: TextAlign.center,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
              icon: FaIcon(FontAwesomeIcons.facebook),
             
              onPressed: () => launchUrlString('https://www.facebook.com/ldn3004')
            ),
            IconButton(
              icon: FaIcon(FontAwesomeIcons.instagram), 
            
              onPressed: () => launchUrlString('https://www.instagram.com/naul_dinh/')
            ),
            IconButton(
              icon: FaIcon(FontAwesomeIcons.twitter), 
        
              onPressed: () { print("Pressed"); }
            )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,              
              children: [
                TextButton(
                      child: Text('Home', style: GoogleFonts.roboto(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w300),),
                      onPressed: ()=>
                        Navigator.pushNamed(context, RoutesName.HOME_PAGE)
                      ),
                TextButton(
                      child: Text('Blog', style: GoogleFonts.roboto(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w300),),
                      onPressed: ()=>
                        Navigator.pushNamed(context, RoutesName.BLOG_PAGE)
                      ),
                TextButton(
                      child: Text('About', style: GoogleFonts.roboto(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w300),),
                      onPressed: ()=>
                        Navigator.pushNamed(context, RoutesName.ABOUT_PAGE)
                      ),
                TextButton(
                      child: Text('Contact', style: GoogleFonts.roboto(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w300),),
                      onPressed: ()=>
                        Navigator.pushNamed(context, RoutesName.CONTACT_PAGE)
                      ),
              ],
                                  ),
     

                ],
            ),

                
                      
   
     
          
        
      
    
  
        
      
    );
  }
}