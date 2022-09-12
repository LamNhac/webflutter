import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:link_text/link_text.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:webflutter/navbar/Footer.dart';
import 'package:webflutter/navbar/Header.dart';


class SecondBlog extends StatelessWidget {
  const SecondBlog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Wrap(
          children: [
            Header(),
            Center(
              child: Wrap(
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.start,
                direction: Axis.vertical,
                children:[ 
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DefaultTextStyle(
                          style: GoogleFonts.mali(fontSize: 40, color: Colors.black, fontWeight: FontWeight.w400),
                          child: Text("Hướng dẫn cài Flutter web")),
                        DefaultTextStyle(
                          style: GoogleFonts.mali(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w200),
                          child: Text("29/5/2001")),
                  ],),),
                  
                  Text(""),
                  Container(
                    padding: EdgeInsets.all(20),
                    width: 1000,
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.start,
                      direction: Axis.vertical,
                      runSpacing: 30,
                      spacing: 10,
                      children: [
                      DefaultTextStyle(
                        style: GoogleFonts.mali(fontSize: 25, color: Colors.black, fontWeight: FontWeight.w300),
                        child: Text("Trước khi cài thì mình sẽ nói là đây là 1 framework đa nền tảng ")),
                       DefaultTextStyle(
                        style: GoogleFonts.mali(fontSize: 25, color: Colors.black, fontWeight: FontWeight.w300),
                        child: Text("nhưng bài viết lần này chỉ chú trọng vô web và sử dụng VSCode")),
                      Row(
                        children: [
                          DefaultTextStyle(
                            style: GoogleFonts.mali(fontSize: 25, color: Colors.black, fontWeight: FontWeight.w300,),
                            child: GestureDetector(child: Text("Đầu tiên bạn hãy tải SDK về từ trên Flutter web ",))
                              ),
                          DefaultTextStyle(
                        style: GoogleFonts.mali(fontSize: 25, color: Colors.blue, fontWeight: FontWeight.w300, decoration: TextDecoration.underline),
                        child: InkWell(child: Text("ở đây",),onTap: () => launchUrlString('https://docs.flutter.dev/get-started/install/windows'),)
                        ),
                        ],
                      ),
                      
                      DefaultTextStyle(
                        style: GoogleFonts.mali(fontSize: 25, color: Colors.black, fontWeight: FontWeight.w300),
                        child: Text("Khi bạn vào link ở trên thì ở phần Get the Flutter SDK như hình dưới",)
                          ),
                      const Image(
                          image:  AssetImage(
                            "assets/imgBlog/secondBlog/anhsecondblog1.jpg",
                            ),
                            width: 600,
                            height: 300,
                            fit: BoxFit.fill,
                            ),
                      DefaultTextStyle(
                        style: GoogleFonts.mali(fontSize: 25, color: Colors.black, fontWeight: FontWeight.w300),
                        child: Text("Sau khi tải xong bạn hãy giải nén vào ổ đĩa nào cũng nhưng mình khuyến khích là ổ C",)
                          ),
                      DefaultTextStyle(
                        style: GoogleFonts.mali(fontSize: 25, color: Colors.black, fontWeight: FontWeight.w300),
                        child: Text("Giải nén xong thì thì bạn phải cần cập nhật path của Flutter",)
                          ),
                      const Image(
                          image:  AssetImage(
                            "assets/imgBlog/secondBlog/anhsecondblog2.png",
                            ),
                            width: 600,
                            height: 300,
                            fit: BoxFit.fill,
                            ),
                      DefaultTextStyle(
                        style: GoogleFonts.mali(fontSize: 25, color: Colors.black, fontWeight: FontWeight.w300),
                        child: Text("Rồi bạn chọn Environment Varialbes => Path (User variables) => Edit",)
                          ),
                      const Image(
                          image:  AssetImage(
                            "assets/imgBlog/secondBlog/anhsecondblog3.png",
                            ),
                            width: 600,
                            height: 300,
                            fit: BoxFit.fill,
                            ),
                      DefaultTextStyle(
                        style: GoogleFonts.mali(fontSize: 25, color: Colors.black, fontWeight: FontWeight.w300),
                        child: Text("Bạn còn nhớ file mà bạn đã giải nén chứ? ",)
                          ),
                      DefaultTextStyle(
                        style: GoogleFonts.mali(fontSize: 25, color: Colors.black, fontWeight: FontWeight.w300),
                        child: Text("Bây giờ bạn hãy vào như đường dẫn sau flutter/bin",)
                          ),
                      const Image(
                          image:  AssetImage(
                            "assets/imgBlog/secondBlog/anhsecondblog4.png",
                            ),
                            width: 600,
                            height: 300,
                            fit: BoxFit.fill,
                            ),
                      DefaultTextStyle(
                        style: GoogleFonts.mali(fontSize: 25, color: Colors.black, fontWeight: FontWeight.w300),
                        child: Text("Bạn copy path rồi để vào Path (User variables) ",)
                          ),
                      const Image(
                          image:  AssetImage(
                            "assets/imgBlog/secondBlog/anhsecondblog5.png",
                            ),
                            width: 600,
                            height: 300,
                            fit: BoxFit.fill,
                            ),
                      const Image(
                          image:  AssetImage(
                            "assets/imgBlog/secondBlog/anhsecondblog6.png",
                            ),
                            width: 400,
                            height: 100,
                            fit: BoxFit.fill,
                            ),
                      DefaultTextStyle(
                        style: GoogleFonts.mali(fontSize: 25, color: Colors.black, fontWeight: FontWeight.w300),
                        child: Text("Bây giờ bạn có thể check bằng cmd với command 'flutter doctor' ",)
                          ),
                      const Image(
                          image:  AssetImage(
                            "assets/imgBlog/secondBlog/anhsecondblog7.png",
                            ),
                            width: 600,
                            height: 300,
                            fit: BoxFit.fill,
                            ),
                       Row(
                         children: [
                           DefaultTextStyle(
                            style: GoogleFonts.mali(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w300),
                            child: Text("Nguồn: ",),),
                          DefaultTextStyle(
                            style: GoogleFonts.mali(fontSize: 20, color: Colors.blue, fontWeight: FontWeight.w300,decoration: TextDecoration.underline),
                            child: InkWell(
                              child: Text("https://docs.flutter.dev/get-started/install/windows",),
                              onTap: () =>launchUrlString('https://docs.flutter.dev/get-started/install/windows'),
                              ),
                              ),
                         ],
                       ),
                      
                    ]),
                  )
                  ]
                ),
            ),
               
            
            Footer()
            
        ],),
      ),
    );
  }
}