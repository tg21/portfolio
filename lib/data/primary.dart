import 'package:flutter/material.dart';
import 'package:portfolio/data/types.dart';
const data = <dynamic,dynamic>{
  "AppTitle" : "Tushar Gautam",
  "homeData" : homeData,
};



const homeData = const<dynamic,dynamic>{
  "greeting" : "Hello",
  "name" : "I'm Tushar Gautam",
  "title" : "Full Stack Developer",
  "bg-image" : "images/1home.webp",
  "user-image" : "images/man.png"
};





class AboutData{
  static const screenTitle = "About";
  static const about_summary = """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris lobortis tempus efficitur. Integer iaculis urna sed diam dictum molestie.
  Curabitur auctor, risus quis cursus semper, est diam varius mauris, The constraints that this widget passes to its child will adhere to the parent's constraints, so if the constraints are not large enough to satisfy the child's maximum intrinsic height, then the child will get less height than it otherwise would. Likewise, if the minimum height constraint is larger than the child's maximum intrinsic height, the child will be given more height than it otherwise wouldet dignissim augue justo ac massa. Integer a libero ac ligula ultrices auctor eu sed sapien. Sed sed cursus nibh. In sed interdum lorem. Nunc velit augue, sagittis in ex sed, bibendum cursus massa. Morbi ullamcorper mauris vel magna posuere mattis.""";
  static const List<ExperianceData> experience = [
    const ExperianceData(
      organisation: "Sample Industries",
      jobTitle: "Software Engineer",
      timeSpan: "July 2019 - May 2021",
      info: "Worked as full-stack developer for random project and developed In-House tools",
      color: Colors.orangeAccent,
    ),
    const ExperianceData(
      organisation: "Sample Industries",
      jobTitle: "Software Engineer",
      timeSpan: "July 2019 - May 2021",
      info: "Worked as full-stack developer for random project and developed In-House tools",
      color: Colors.green
    ),
    const ExperianceData(
      organisation: "Sample Industries",
      jobTitle: "Software Engineer",
      timeSpan: "July 2019 - May 2021",
      info: "Worked as full-stack developer for random project and developed In-House tools"
    ),
    const ExperianceData(
      organisation: "Random Industries",
      jobTitle: "Software Engineer",
      timeSpan: "31 July 2019 - 14 May 2021",
      color: Colors.redAccent
      //info: "Worked as full-stack developer for Sample project and developed In-House tools"
    ),

  ];
  static const bg_image = "images/2about.webp";
}


