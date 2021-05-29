
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/screens/art.dart';
import 'package:portfolio/screens/blog.dart';
import 'package:portfolio/screens/contact.dart';

import 'package:portfolio/screens/home.dart';
import 'package:portfolio/screens/about.dart';
import 'package:portfolio/screens/skills.dart';

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
//  ScreenData(
//     icon:Icons.house_outlined,
//     tooltip: "Home",
//     widget: HomeScreen(),
//     primaryColor: Color(0xFF3D173F),
//      ),
//   ScreenData(
//     icon:Icons.details_outlined,
//     tooltip: "About",
//     widget: AboutScreen(),
//     primaryColor: Colors.redAccent,
//      ),
  
     
//   ScreenData(
//     icon:Icons.developer_mode_outlined,
//     tooltip: "Skills",
//     widget: SkillScreen(),
//     primaryColor: Colors.pink,
//      ),
  // ScreenData(
  //   icon:FontAwesomeIcons.blog,
  //   tooltip: "Blog",
  //   widget: BlogScreen(),
  //   primaryColor: Colors.yellow,
  //    ),
  ScreenData(
    icon:FontAwesomeIcons.paintBrush,
    tooltip: "Art",
    widget: ArtScreen(),
    primaryColor: Colors.green,
     ),
  ScreenData(
    icon:Icons.contact_mail_outlined,
    tooltip: "contact",
    widget: ContactScreen(),
    primaryColor: Colors.blueAccent,
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
