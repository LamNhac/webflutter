import 'package:flutter/material.dart';
import 'package:webflutter/blog/FirstBlog.dart';
import 'package:webflutter/blog/FourBlog.dart';
import 'package:webflutter/blog/SecondBlog.dart';
import 'package:webflutter/page/BlogPage.dart';


import 'package:webflutter/blog/ThirdBlog.dart';
import 'package:webflutter/page/AboutPage.dart';
import 'package:webflutter/page/ContactPage.dart';
import 'package:webflutter/page/HomePage.dart';
import 'package:webflutter/page/UnkwonPage.dart';

import 'package:webflutter/router/RoutesName.dart';


class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.HOME_PAGE:
        return _GeneratePageRoute(
            widget: const HomePage(), routeName: settings.name!);
      case RoutesName.BLOG_PAGE:
        return _GeneratePageRoute(
            widget: const BlogPage(), routeName: settings.name!);
      case RoutesName.ABOUT_PAGE:
        return _GeneratePageRoute(
          widget: const AboutPage(), routeName: settings.name!);
      case RoutesName.CONTACT_PAGE:
        return _GeneratePageRoute(
          widget: const ContactPage(), routeName: settings.name!);
      case RoutesName.FIRSTBLOG_PAGE:
        return _GeneratePageRoute(
          widget: const FirstBlog(), routeName: settings.name!);
      case RoutesName.SECONDBLOG_PAGE:
        return _GeneratePageRoute(
          widget: const SecondBlog(), routeName: settings.name!);
      case RoutesName.THIRDBLOG_PAGE:
        return _GeneratePageRoute(
          widget: const ThirdBlog(), routeName: settings.name!);
      case RoutesName.FOURBLOG_PAGE:
        return _GeneratePageRoute(
          widget: const FourBlog(), routeName: settings.name!);
      default:
        return _GeneratePageRoute(
            widget: const UnknownPage(), routeName: settings.name!);
    }
  }

}



class _GeneratePageRoute extends PageRouteBuilder {
  final Widget widget;
  final String routeName;
  _GeneratePageRoute({required this.widget, required this.routeName})
      : super(
            settings: RouteSettings(name: routeName),
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) {
              return widget;
            },
            transitionDuration: const Duration(milliseconds: 500),
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
                Widget child) {
              return SlideTransition(
                textDirection: TextDirection.rtl,
                position: Tween<Offset>(
                  begin: const Offset(1.0, 0.0),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              );
            });
}