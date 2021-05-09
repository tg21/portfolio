import 'package:flutter/material.dart';
import 'package:portfolio/screens/home.dart';
const data = <dynamic,dynamic>{
  "AppTitle" : "Tushar Gautam",
  "homeData" : homeData,
};

//mainly data for actionbar
var screensData = [
  <dynamic,dynamic>{
    "icon" : Icons.house_outlined,
    "tooltip" : "Home",
    "widget" : HomeScreen(),
    "primaryColor" : Colors.redAccent,
  },
  const <dynamic,dynamic>{
    "icon" : Icons.details_outlined,
    "tooltip" : "About",
    "widget" : "About Screen",
    "primaryColor" : Colors.blueAccent,
  },
  const <dynamic,dynamic>{
    "icon" : Icons.developer_mode_outlined,
    "tooltip" : "Projects",
    "widget" : "Projects Screen",
    "primaryColor" : Colors.yellowAccent,
  },
  const <dynamic,dynamic>{
    "icon" : Icons.brush_outlined,
    "tooltip" : "Drawings",
    "widget" : "Drawings and Paintings",
    "primaryColor" : Colors.green,
  },
  const <dynamic,dynamic>{
    "icon" : Icons.menu_book_outlined,
    "tooltip" : "Poems",
    "widget" : "Poems",
    "primaryColor" : Colors.deepPurpleAccent,
  },
  const <dynamic,dynamic>{
    "icon" : Icons.contact_mail_outlined,
    "tooltip" : "Contact",
    "widget" : "Contact Screen",
    "primaryColor" : Colors.deepOrangeAccent,
  },
  const <dynamic,dynamic>{
    "icon" : Icons.rss_feed,
    "tooltip" : "Place Holder",
    "widget" : "Need To Think About this page",
    "primaryColor" : Colors.pinkAccent,
  },


];

const homeData = const<dynamic,dynamic>{
  "greeting" : "Hello",
  "name" : "I'm Tushar Gautam",
  "title" : "Full Stack Developer",
  "bg-image" : "images/home-bg.webp",
  "user-image" : "images/man.png"
};