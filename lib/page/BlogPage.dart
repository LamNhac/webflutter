
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webflutter/navbar/Footer.dart';
import 'package:webflutter/navbar/Header.dart';
import 'package:webflutter/router/RoutesName.dart';


class BlogPage extends StatefulWidget {
  const BlogPage({Key? key}) : super(key: key);

  @override
  State<BlogPage> createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Wrap(
          children: [
            const Center(child: Header(),),
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
            Center(
              child: Container(
                margin: const EdgeInsets.all(30),
                child: Wrap(
                  alignment: WrapAlignment.spaceAround,
                  direction: Axis.horizontal,
                  runSpacing: 50,
                  spacing: 200,
                  children:  [
                     TextButton(
                       onPressed: () => Navigator.pushNamed(context, RoutesName.FIRSTBLOG_PAGE),
                       child: Wrap(
                          children: [
                            Image(image: const AssetImage(
                               "assets/imgBlog/firstBlog/anhfirstblog5.jpg",
                            ),
                              width: 300,
                              height: 300,
                              fit: BoxFit.contain,
                              ),
                            Container(
                              margin: EdgeInsets.all(20),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(10),
                                    child: DefaultTextStyle(
                                        style: const TextStyle(color: Colors.black,),
                                        child: Text('Một ngày ở Sài Gòn', style: GoogleFonts.mali(fontSize: 23, color: Colors.black, fontWeight: FontWeight.w500),),
                                    ),
                                  ),
                                  DefaultTextStyle(
                                      style: const TextStyle(color: Colors.black,),
                                      child: Column(
                                        children: [
                                          Text('Cùng mình dạo quanh ở ', style: GoogleFonts.mali(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w300),),
                                          Text('Thảo Cầm Viên nhé! ', style: GoogleFonts.mali(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w300),),
                                        ],
                                      ),
                                  ),
                                  DefaultTextStyle(
                                      style: const TextStyle(color: Colors.black,),
                                      child: Text('Ngày cập nhật: 28/5/2022', style: GoogleFonts.mali(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w200, fontStyle: FontStyle.italic),),
                                  ),
                                  
                              ],
                         ),
                            ),
                            
                          ]
                       ),
                     ),
                     TextButton(
                       onPressed: () => Navigator.pushNamed(context, RoutesName.SECONDBLOG_PAGE),
                       child: Wrap(
                          children: [
                            Image(image: const NetworkImage(
                               "https://1.bp.blogspot.com/-0ISItBQoKW4/XVXUU-vWiII/AAAAAAAAEnU/6z3xR--iIjMM4AR64_vlgTkdxeBu9dHlQCLcBGAs/s1600/flutter-tutorial.png",
                            ),
                              width: 300,
                              height: 300,
                              fit: BoxFit.contain,
                              ),
                            Container(
                              margin: EdgeInsets.all(20),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(10),
                                    child: DefaultTextStyle(
                                        style: const TextStyle(color: Colors.black,),
                                        child: Text('Hướng dẫn cài Flutter web', style: GoogleFonts.mali(fontSize: 23, color: Colors.black, fontWeight: FontWeight.w500),),
                                    ),
                                  ),
                                  DefaultTextStyle(
                                      style: const TextStyle(color: Colors.black,),
                                      child: Column(
                                        children: [
                                          Text('Bài viết này mình sẽ chỉ ', style: GoogleFonts.mali(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w300),),
                                          Text('cách cài flutter nha!', style: GoogleFonts.mali(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w300),),
                                        ],
                                      ),
                                  ),
                                  DefaultTextStyle(
                                      style: const TextStyle(color: Colors.black,),
                                      child: Text('Ngày cập nhật: 28/5/2022', style: GoogleFonts.mali(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w200, fontStyle: FontStyle.italic),),
                                  ),
                                  
                              ],
                         ),
                            ),
                            
                          ]
                       ),
                     ),
                     
         
                  ]     
                ),
              ),
            )
            ,const Footer()
          ],
        ),
      ),
    );
  }

}
 



