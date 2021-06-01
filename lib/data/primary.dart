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

class HomeData {
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
      """I am Software Engineer. I have a degree in Computer Science and I am pursuing Master's degree in Computer Applications. I love programming and learning new technologies.
I love every thing programming related but python, JavaScript, dart and c# are my favourite languages.
I have worked on few of my personal projects""";
  static const List<ExperianceData> experience = [
    const ExperianceData(
      organisation: "Tech Mahindra",
      jobTitle: "Software Engineer Developer",
      timeSpan: "July 2019 - present",
      info: """\u2022 Understand requirements and develop prototypes.
\u2022 Develop Frontend of Web-applications with angular,js
\u2022 Develop Backend of Web applications with c# asp.net and MSSQL server.
\u2022 Automate Tasks with python.
\u2022 Refactor codebase for better maintainability and performance""",
      color: Colors.orangeAccent,
    ),
  ];

  static const List<EducationData> education = [
    const EducationData(
      degree: "Master of Computer Applications",
      college: "Indira Gandhi National Open University\nDelhi",
      timeSpan: "July 19 - August 22",
      color: Colors.indigo,
      fontColor: Colors.white,
    ),
    const EducationData(
      degree: "Bachelor of Computer Science",
      college: """Bhaskaracharya College Of Applied Sciences
Delhi University""",
      timeSpan: "July 16- May 19",
      color: Colors.amber,
      fontColor: Colors.black87,
    ),
    const EducationData(
      degree: "XII (Science)",
      college: """Rajkiya Pratibha Vikas Vidhyalaya
Dwarka, Delhi""",
      timeSpan: "2016",
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
        details:
            "Python is one of my favourite langauges. It is my go to lanaguage to solve any problem with scriptable solution. Apart form using it to script almost every small problem with it, I have worked on few of my personal python projects that are a bit larger in scale ",
        certifications: [
          // const CertificationData(
          //   certification: "SoloLearn Python Certification",
          //   validaity: "lifetime",
          //   url: "https://google.com",
          //   image: "images/man.png",
          //   infoCertificate: "Completed Python Course with Solo Learn",
          // ),
          // const CertificationData(
          //   certification: "SoloLearn Conda Certification",
          //   validaity: "lifetime",
          //   url: "https://google.com",
          //   image: "images/man.png",
          //   infoCertificate: "Completed Conda Course with Solo Learn",
          // ),
        ],
        projects: [
          const ProjectsData(
            project: "Python On Pails",
            duration: "2018 - Current",
            aboutProject:
                "Python On Pails is an OpenSource lightweight web development framework that is designed to speed up development process",
            //image: "assets/images/others/pyop.webp",
            sourceUrl: "https://github.com/tg21/python-on-pails",
          ),
          const ProjectsData(
            project: "WiBuster",
            duration: "2018 - Current",
            aboutProject:
                "WiBuster is an opesource website enumerator made with python3. It can enumerate even those websites that respond with code 200 even when resource is not present",
            //image: "assets/images/others/wibuster.webp",
            sourceUrl: "https://github.com/tg21/wibuster",
          ),
        ]),
    const SkillsFormat(
        skillName: "Flutter",
        expirenceTimeWithSkill: "1+ years",
        details: """I have been working with flutter for more than a year, and I think this is one of the best frameworks available for cross-platform development, backed by big commmunity and all the benefits of dart langauage are major plus points.
I have worked with two major flutter projects.""",
        certifications: [
          const CertificationData(
            certification: "App Brewery Introduction to flutter Certification",
            validaity: "lifetime",
            url: "https://google.com",
            image: "https://www.londonappbrewery.com/wp-content/uploads/2015/06/London-App-Brewery-Logo-Large.png",
            infoCertificate: "Completed Flutter Course with App Brewery",
          ),
          const CertificationData(
            certification: "SoloLearn Dart Certification",
            validaity: "lifetime",
            url: "https://google.com",
            image: "assets/images/man.png",
            infoCertificate: "Completed Dart Course with Solo Learn",
          ),
        ],
        projects: [
          const ProjectsData(
            project: "The Last Dino Run",
            duration: "Dec 20 - April 21",
            aboutProject:
                """An android game based on Chrome's famous offline game made with flutter from scratch without using any game engines like flame or unity.
It is available on google play store.""",
            image: "images/man.png",
            url: "https://play.google.com/store/apps/details?id=com.appturtles.the_last_dino",
          ),
          const ProjectsData(
            project: "This Website",
            duration: "April 21 - May 21",
            aboutProject:
                "This website is made with flutter form scratch. It uses flutter-web with html as web-renderer.",
            //image: "images/man.png",
            url: "#",
          ),
        ]),
    const SkillsFormat(
        skillName: "React",
        expirenceTimeWithSkill: "1+ years",
        details: """I have been working with flutter for more than a year, and I think this is one of the best frameworks available for cross-platform development, backed by big commmunity and all the benefits of dart langauage are major plus points.
I have worked with two major flutter projects.""",
        certifications: [],
        projects: [
          const ProjectsData(
            project: "Unburden App",
            duration: "Dec 20 - April 21",
            aboutProject:
                """An android application made with react-native for anonymous peer support where users can login and share what's on there mind anonymously without fearing any judgement.
Its backend is powered by node js, express.js and mongo db. It was primarily deployed on an AWS EC2 instance, and currently is running on IBM cloud.
Unburden app is available on goolge play store.""",
            image: "https://appturtles.com/unburden/assets/img/illus/icon.png",
            url: "https://appturtles.com/unburden",
          ),
        ]),
  ];
}

class ContactData {
  static const bg_image = "assets/images/6contact.webp";
  static const List<ContactClass> contacts = [
    const ContactClass(
        contactName: "Gmail",
        icon: FontAwesomeIcons.envelope,
        url: "mailto:gautamtushar21@gmail.com",
        iconColor: Colors.redAccent),
    const ContactClass(
      contactName: "Twitter",
      icon: FontAwesomeIcons.twitter,
      url: "https://twitter.com/CoderWhoLived",
      iconColor: Colors.blueAccent,
    ),
    const ContactClass(
      contactName: "StackOverflow",
      icon: FontAwesomeIcons.stackOverflow,
      url: "https://twitter.com/CoderWhoLived",
      iconColor: Colors.deepOrange,
      textColor: Colors.white70,
      bgColor: Colors.black87,
    ),
    const ContactClass(
      contactName: "Hackerrank",
      icon: FontAwesomeIcons.hackerrank,
      url: "https://twitter.com/CoderWhoLived",
      iconColor: Colors.white,
      textColor: Colors.white70,
      bgColor: Colors.green,
    ),
    const ContactClass(
      contactName: "StackOverflow",
      icon: FontAwesomeIcons.stackOverflow,
      url: "https://twitter.com/CoderWhoLived",
      iconColor: Colors.deepOrange,
      textColor: Colors.white70,
      bgColor: Colors.black87,
    ),
  ];
}

class BlogData {
  static const bg_image = "assets/images/5litrature.webp";
  static const primaryColor = Colors.yellow;
  static const List<BlogClass> blogList = [
    const BlogClass(
        name: "How To Fix a bulb without moving a muscle 💡",
        url: "https://google.com",
        details: """When the exception was thrown, this was the stack
C:/b/s/w/ir/cache/builder/src/out/host_debug/dart-sdk/lib/_internal/js_dev_runtime/private/ddc_runtime/errors.dart 236:49      throw_
C:/b/s/w/ir/cache/builder/src/out/host_debug/dart-sdk/lib/_internal/js_dev_runtime/private/ddc_runtime/errors.dart 29:3        assertFailed
packages/flutter/src/widgets/container.dart 274:42                                                                             new
packages/portfolio/screens/blog.dart 62:32"""),
    const BlogClass(
        name: "Why reddit is the worst platform for anything",
        url: "https://reddit.com",
        bgColor: Colors.green,
        textColor: Colors.white,
        details: """When the exception was thrown, this was the stack
C:/b/s/w/ir/cache/builder/src/out/host_debug/dart-sdk/lib/_internal/js_dev_runtime/private/ddc_runtime/errors.dart 236:49      throw_
C:/b/s/w/ir/cache/builder/src/out/host_debug/dart-sdk/lib/_internal/js_dev_runtime/private/ddc_runtime/errors.dart 29:3        assertFailed
packages/flutter/src/widgets/container.dart 274:42                                                                             new
packages/portfolio/screens/blog.dart 62:32"""),
  ];
}

class ArtData {
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
