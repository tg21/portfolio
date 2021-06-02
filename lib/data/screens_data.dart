import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/screens/art.dart';
// import 'package:portfolio/screens/blog.dart';
import 'package:portfolio/screens/contact.dart';

import 'package:portfolio/screens/home.dart';
import 'package:portfolio/screens/about.dart';
import 'package:portfolio/screens/skills.dart';

class ScreenData {
  final IconData icon;
  final String tooltip;
  final Widget widget;
  final Color primaryColor;

  ScreenData(
      {required this.icon,
      required this.tooltip,
      required this.widget,
      required this.primaryColor});
}

//mainly data for actionbar
var screensData = [
  ScreenData(
    icon: FontAwesomeIcons.fortAwesome,
    tooltip: "Home",
    widget: HomeScreen(),
    primaryColor: Colors.indigo,
  ),
  ScreenData(
    icon: FontAwesomeIcons.solidUser,
    tooltip: "About",
    widget: AboutScreen(),
    primaryColor: Colors.redAccent,
  ),

  ScreenData(
    icon: FontAwesomeIcons.solidFileCode,
    tooltip: "Skills",
    widget: SkillScreen(),
    primaryColor: Colors.pink,
  ),
  // ScreenData(
  //   icon:FontAwesomeIcons.scroll,
  //   tooltip: "Blog",
  //   widget: BlogScreen(),
  //   primaryColor: Colors.deepOrangeAccent,
  //    ),
  ScreenData(
    icon: FontAwesomeIcons.palette,
    tooltip: "Sketches",
    widget: ArtScreen(),
    primaryColor: Colors.green,
  ),
  ScreenData(
    icon: FontAwesomeIcons.solidIdCard,
    tooltip: "contact",
    widget: ContactScreen(),
    primaryColor: Colors.deepOrangeAccent,
  ),
];
