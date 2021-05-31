import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/data/types.dart';

const data = <dynamic, dynamic>{
  "AppTitle": "Tushar Gautam",
};

// const homeData = const <dynamic, dynamic>{
//   "greeting": "Hello",
//   "name": "I'm Tushar Gautam",
//   "title": "Full Stack Developer",
//   "bg-image": "assets/images/1home.webp",
//   "user-image": "images/man.png"
// };

class HomeData{
  static const greeting = "hello";
  static const intro = "I'm Tushar Gautam";
  static const profile = "Software Engineer";
  static const bg_image = "assets/images/1home.webp";
  static const user_image = "assets/images/man.png";
}


class AboutData {
  static const bg_image = "assets/images/2about.webp";
  static const screenTitle = "About";
  static const about_summary =
      """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris lobortis tempus efficitur. Integer iaculis urna sed diam dictum molestie.
  Curabitur auctor, risus quis cursus semper, est diam varius mauris, The constraints that this widget passes to its child will adhere to the parent's constraints, so if the constraints are not large enough to satisfy the child's maximum intrinsic height, then the child will get less height than it otherwise would. Likewise, if the minimum height constraint is larger than the child's maximum intrinsic height, the child will be given more height than it otherwise wouldet dignissim augue justo ac massa. Integer a libero ac ligula ultrices auctor eu sed sapien. Sed sed cursus nibh. In sed interdum lorem. Nunc velit augue, sagittis in ex sed, bibendum cursus massa. Morbi ullamcorper mauris vel magna posuere mattis.""";
  static const List<ExperianceData> experience = [
    const ExperianceData(
      organisation: "Sample Industries",
      jobTitle: "Software Engineer",
      timeSpan: "July 2019 - May 2021",
      info:
          "Worked as full-stack developer for random project and developed In-House tools",
      color: Colors.orangeAccent,
    ),
    const ExperianceData(
        organisation: "Sample Industries",
        jobTitle: "Software Engineer",
        timeSpan: "July 2019 - May 2021",
        info:
            "Worked as full-stack developer for random project and developed In-House tools",
        color: Colors.green),
    const ExperianceData(
        organisation: "Sample Industries",
        jobTitle: "Software Engineer",
        timeSpan: "July 2019 - May 2021",
        info:
            "Worked as full-stack developer for random project and developed In-House tools Worked as full-stack developer for random project and developed In-House tools Worked as full-stack developer for random project and developed In-House tools Worked as full-stack developer for random project and developed In-House tools Worked as full-stack developer for random project and developed In-House tools"),
    const ExperianceData(
      organisation: "Random Industries",
      jobTitle: "Software Engineer",
      timeSpan: "31 July 2019 - 14 May 2021",
      color: Colors.deepPurpleAccent,
      //info: "Worked as full-stack developer for Sample project and developed In-House tools"
    ),
  ];

  static const List<EducationData> education = [
    const EducationData(
      degree: "Masters in Computer Applications",
      college: "IGNOU",
      timeSpan: "July 19- Huly 22",
      color: Colors.teal,
      fontColor: Colors.white,
    ),
    const EducationData(
      degree: "Masters in Computer Applications",
      college: "IGNOU",
      timeSpan: "July 19- Huly 22",
      color: Colors.black45,
      fontColor: Colors.white,
    ),
    const EducationData(
      degree: "Masters in Computer Applications",
      college: "IGNOU",
      timeSpan: "July 19- Huly 22",
    ),
    const EducationData(
      degree: "Masters in Computer Applications",
      college: "IGNOU",
      timeSpan: "July 19- Huly 22",
    ),
  ];
  
}

class SkillsData {
  static const bg_image = "assets/images/3showcase.webp";
  static const list_title = "skills";
  static const color = Colors.pink;
  static const secondaryButtonColor = Colors.blueGrey;
  static const fontColor = Colors.black;
  static const buttonFontColor = Colors.white;
  static const List<SkillsFormat> skills = [
    const SkillsFormat(
        skillName: "Python",
        expirenceTimeWithSkill: "4+ years",
        details: "I have worked on few of my personal python projects. I have worked on few of my personal python projects. I have worked on few of my personal python projects. I have worked on few of my personal python projects. I have worked on few of my personal python projects. I have worked on few of my personal python projects. I have worked on few of my personal python projects.",
        certifications: [
          const CertificationData(
            certification: "SoloLearn Python Certification",
            validaity: "lifetime",
            url: "https://google.com",
            image: "images/man.png",
            infoCertificate: "Completed Python Course with Solo Learn",
          ),
          const CertificationData(
            certification: "SoloLearn Conda Certification",
            validaity: "lifetime",
            url: "https://google.com",
            image: "images/man.png",
            infoCertificate: "Completed Conda Course with Solo Learn",
          ),
        ],
        projects: [
          const ProjectsData(
            project: "Python On Pails",
            duration: "2018 - Current",
            aboutProject: "Python On Pails is an OpenSource lightweight web development framework that is designed to speed up development process",
            image: "images/man.png",
            url: "https://github.com",
          ),
          const ProjectsData(
            project: "WiBuster",
            duration: "2018 - Current",
            aboutProject: "WiBuseter is an opesource website enumerator made with python3",
            image: "images/man.png",
            url: "https://github.com",
          ),
        ]
        ),
    const SkillsFormat(
        skillName: "Flutter",
        expirenceTimeWithSkill: "1+ years",
        details: "I have worked on few of my personal Flutter projects.",
        certifications: [
          const CertificationData(
            certification: "App Brewery Introduction to flutter Certification",
            validaity: "lifetime",
            url: "https://google.com",
            image: "images/man.png",
            infoCertificate: "Completed Flutter Course with App Brewery",
          ),
          const CertificationData(
            certification: "SoloLearn Dart Certification",
            validaity: "lifetime",
            url: "https://google.com",
            image: "images/man.png",
            infoCertificate: "Completed Dart Course with Solo Learn",
          ),
        ],
        projects: [
          const ProjectsData(
            project: "The Last Dino Run",
            duration: "2020 - 2021",
            aboutProject: "An android game based on Chrome's game made with flutter from scratch without using any game engines like flame or unity",
            image: "images/man.png",
            url: "https://github.com",
          ),
          const ProjectsData(
            project: "This Website",
            duration: "2021 - 2021",
            aboutProject: "WiBuseter is an opesource website enumerator made with python3",
            image: "images/man.png",
            url: "https://github.com",
          ),
        ]
        ),
        const SkillsFormat(
        skillName: "Angular",
        expirenceTimeWithSkill: "1+ years",
        details: "I have worked on few of my personal Flutter projects.",
        certifications: [
          const CertificationData(
            certification: "App Brewery Introduction to flutter Certification",
            validaity: "lifetime",
            url: "https://google.com",
            image: "images/man.png",
            infoCertificate: "Completed Flutter Course with App Brewery",
          ),
          const CertificationData(
            certification: "SoloLearn Dart Certification",
            validaity: "lifetime",
            url: "https://google.com",
            image: "images/man.png",
            infoCertificate: "Completed Dart Course with Solo Learn",
          ),
        ],
        projects: [
          const ProjectsData(
            project: "The Last Dino Run",
            duration: "2020 - 2021",
            aboutProject: "An android game based on Chrome's game made with flutter from scratch without using any game engines like flame or unity",
            image: "images/man.png",
            url: "https://github.com",
          ),
          const ProjectsData(
            project: "This Website",
            duration: "2021 - 2021",
            aboutProject: "WiBuseter is an opesource website enumerator made with python3",
            image: "images/man.png",
            url: "https://github.com",
            sourceUrl: "https://tg21.github.io",
          ),
        ]
        ),
        const SkillsFormat(
        skillName: "React-Native",
        expirenceTimeWithSkill: "1+ years",
        details: "I have worked on few of my personal Flutter projects.",
        certifications: [
          const CertificationData(
            certification: "App Brewery Introduction to flutter Certification",
            validaity: "lifetime",
            url: "https://google.com",
            image: "images/man.png",
            infoCertificate: "Completed Flutter Course with App Brewery",
          ),
          const CertificationData(
            certification: "SoloLearn Dart Certification",
            validaity: "lifetime",
            url: "https://google.com",
            image: "images/man.png",
            infoCertificate: "Completed Dart Course with Solo Learn",
          ),
        ],
        projects: [
          const ProjectsData(
            project: "The Last Dino Run",
            duration: "2020 - 2021",
            aboutProject: "An android game based on Chrome's game made with flutter from scratch without using any game engines like flame or unity",
            image: "images/man.png",
            //url: "https://github.com",
          ),
          const ProjectsData(
            project: "This Website",
            duration: "2021 - 2021",
            aboutProject: "WiBuseter is an opesource website enumerator made with python3",
            image: "images/man.png",
            sourceUrl: "https://github.com",
          ),
        ]
        ),
  ];
}

class ContactData{
  static const bg_image = "assets/images/6contact.webp";
  static const List<ContactClass> contacts = [
    const ContactClass(
      contactName : "Gmail",
      icon: FontAwesomeIcons.envelope,
      url: "mailto:gautamtushar21@gmail.com",
      iconColor: Colors.redAccent
    ),
    const ContactClass(
      contactName : "Twitter",
      icon: FontAwesomeIcons.twitter,
      url: "https://twitter.com/CoderWhoLived",
      iconColor: Colors.blueAccent,
    ),
    const ContactClass(
      contactName : "StackOverflow",
      icon: FontAwesomeIcons.stackOverflow,
      url: "https://twitter.com/CoderWhoLived",
      iconColor: Colors.deepOrange,
      textColor: Colors.white70,
      bgColor: Colors.black87,
    ),
    const ContactClass(
      contactName : "Hackerrank",
      icon: FontAwesomeIcons.hackerrank,
      url: "https://twitter.com/CoderWhoLived",
      iconColor: Colors.white,
      textColor: Colors.white70,
      bgColor: Colors.green,
    ),
    const ContactClass(
      contactName : "StackOverflow",
      icon: FontAwesomeIcons.stackOverflow,
      url: "https://twitter.com/CoderWhoLived",
      iconColor: Colors.deepOrange,
      textColor: Colors.white70,
      bgColor: Colors.black87,
    ),
    
  ];
}

class BlogData{
  static const bg_image = "assets/images/5litrature.webp";
  static const primaryColor = Colors.yellow;
  static const List<BlogClass> blogList = [
    const BlogClass(name: "How To Fix a bulb without moving a muscle 💡", url: "https://google.com",details: """When the exception was thrown, this was the stack
C:/b/s/w/ir/cache/builder/src/out/host_debug/dart-sdk/lib/_internal/js_dev_runtime/private/ddc_runtime/errors.dart 236:49      throw_
C:/b/s/w/ir/cache/builder/src/out/host_debug/dart-sdk/lib/_internal/js_dev_runtime/private/ddc_runtime/errors.dart 29:3        assertFailed
packages/flutter/src/widgets/container.dart 274:42                                                                             new
packages/portfolio/screens/blog.dart 62:32""" ),
    const BlogClass(name: "Why reddit is the worst platform for anything", url: "https://reddit.com",bgColor: Colors.green,textColor: Colors.white,details:"""When the exception was thrown, this was the stack
C:/b/s/w/ir/cache/builder/src/out/host_debug/dart-sdk/lib/_internal/js_dev_runtime/private/ddc_runtime/errors.dart 236:49      throw_
C:/b/s/w/ir/cache/builder/src/out/host_debug/dart-sdk/lib/_internal/js_dev_runtime/private/ddc_runtime/errors.dart 29:3        assertFailed
packages/flutter/src/widgets/container.dart 274:42                                                                             new
packages/portfolio/screens/blog.dart 62:32"""),
  ];
}


class ArtData{
  static const bg_image = 'assets/images/4art.webp';
  static const List<String> photos = [
    'assets/images/art/art1.webp',
    'assets/images/art/art2.webp',
    'assets/images/art/art3.webp',
    'assets/images/art/art4.webp',
    'assets/images/art/art5.webp',
    'assets/images/art/art6.webp',
  ];
}