import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:webflutter/router/RouteGenerator.dart';
import 'package:webflutter/router/RoutesName.dart';

void main()  {
  WidgetsFlutterBinding.ensureInitialized;
  Firebase.initializeApp(
    options: const  FirebaseOptions(
      apiKey: "AIzaSyDahy02l8fcF4YZ5cKyn7kUxITMoKM8HBE", // Your apiKey
      appId: "1:164234757143:web:6c4b78d2d9735c4e3d4852", // Your appId
      messagingSenderId: "G-9YV3F0ZDVZ", // Your messagingSenderId
      projectId: "blogndl", // Your projectId
    ),
  );
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BlogNDL',
      theme: ThemeData(
      primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.generateRoute,
      initialRoute: RoutesName.HOME_PAGE,

      
    );
  }
}