
import 'package:flutter/material.dart';

import 'package:portfolio/screens/home.dart';
import 'package:portfolio/screens/about.dart';

class ScreenData{
  final IconData icon;
  final String tooltip;
  final Widget widget;
  final Color primaryColor;

  ScreenData(
    {
      required this.icon,
      required this.tooltip,
      required this.widget,
      required this.primaryColor
      }
    );
}

//mainly data for actionbar
var screensData = [
  new ScreenData(
    icon:Icons.details_outlined,
    tooltip: "About",
    widget: AboutScreen(),
    primaryColor: Colors.redAccent,
     ),
  new ScreenData(
    icon:Icons.house_outlined,
    tooltip: "Home",
    widget: HomeScreen(),
    primaryColor: Color(0xFF3D173F),
     ),
     
  
     
  // new ScreenData(
  //   icon:Icons.house_outlined,
  //   tooltip: "Home",
  //   widget: HomeScreen(),
  //   primaryColor: Color(0xFF3D173F),
  //    ),
     
  // new ScreenData(
  //   icon:Icons.house_outlined,
  //   tooltip: "About",
  //   widget: AboutScreen(),
  //   primaryColor: Color(0xFF3D173F),
  //    ),
     
  // new ScreenData(
  //   icon:Icons.house_outlined,
  //   tooltip: "Showcase",
  //   widget: HomeScreen(),
  //   primaryColor: Color(0xFF3D173F),
  //    ),
     
  // new ScreenData(
  //   icon:Icons.house_outlined,
  //   tooltip: "Home",
  //   widget: HomeScreen(),
  //   primaryColor: Color(0xFF3D173F),
  //    ),
     
  // new ScreenData(
  //   icon:Icons.house_outlined,
  //   tooltip: "Home",
  //   widget: HomeScreen(),
  //   primaryColor: Color(0xFF3D173F),
  //    ),
     
  // <dynamic,dynamic>{
  //   "icon" : Icons.house_outlined,
  //   "tooltip" : "Home",
  //   "widget" : HomeScreen(),
  //   "primaryColor" : Color(0xFF3D173F),
  // },
  // <dynamic,dynamic>{
  //   "icon" : Icons.details_outlined,
  //   "tooltip" : "About",
  //   "widget" : AboutScreen(),
  //   "primaryColor" :Color(0xFF8A1122),
  // },
  // const <dynamic,dynamic>{
  //   "icon" : Icons.developer_mode_outlined,
  //   "tooltip" : "Projects",
  //   "widget" : "images/3showcase.webp",
  //   "primaryColor" : Color(0xFFF59094),
  // },
  // const <dynamic,dynamic>{
  //   "icon" : Icons.brush_outlined,
  //   "tooltip" : "Drawings",
  //   "widget" : "images/4art.webp",
  //   "primaryColor" : Colors.green,
  // },
  // const <dynamic,dynamic>{
  //   "icon" : Icons.menu_book_outlined,
  //   "tooltip" : "Poems",
  //   "widget" : "images/5litrature.webp",
  //   "primaryColor" : Color(0xFF0484D6),
  // },
  // const <dynamic,dynamic>{
  //   "icon" : Icons.contact_mail_outlined,
  //   "tooltip" : "Contact",
  //   "widget" : "images/6contact.webp",
  //   "primaryColor" : Colors.pinkAccent,
  // },
  // const <dynamic,dynamic>{
  //   "icon" : Icons.rss_feed,
  //   "tooltip" : "Place Holder",
  //   "widget" : "images/7misc.webp",
  //   "primaryColor" : Color(0xFF5E5E5E),
  // },


];
