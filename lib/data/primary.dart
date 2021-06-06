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
  // static const user_image = "assets/images/man.png";
  static const user_image = "https://avatars.githubusercontent.com/u/21080598?v=4";
}

class AboutData {
  static const bg_image = "assets/images/2about.webp";
  static const screenTitle = "About";
  static const about_summary =
      """I am a Software Engineer. I have a degree in Computer Science and I am pursuing Master's degree in Computer Applications. I love programming and learning new technologies.
I enjoy almost every thing programming related but python, JavaScript, dart and c# are my favourite languages.
I have worked on few of my personal projects as well because I think that the best way to learn a new technology is to build something cool with it""";
  static const List<ExperienceData> experience = [
    const ExperienceData(
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
        experienceTimeWithSkill: "4+ years",
        details:
            """"Python is one of my favourite languages. It is my go to language to solve any problem with scriptable solution. Apart form using it to script almost every small problem, I have worked on few of my personal python projects that are a bit larger in scale,
Professionally I have used python for automating tasks of operations teams at Tech Mahindra.""",
        certifications: [
          // const CertificationData(
          //   certification: "SoloLearn Python Certification",
          //   validity: "lifetime",
          //   url: "https://google.com",
          //   image: "images/man.png",
          //   infoCertificate: "Completed Python Course with Solo Learn",
          // ),
          // const CertificationData(
          //   certification: "SoloLearn Conda Certification",
          //   validity: "lifetime",
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
                """Python On Pails is an OpenSource lightweight web development framework that is designed to speed up development process.""",
            image: "assets/images/others/pyop.webp",
            sourceUrl: "https://github.com/tg21/python-on-pails",
          ),
          const ProjectsData(
            project: "WiBuster",
            duration: "2018 - Current",
            aboutProject:
                "WiBuster is an opesource website enumerator made with python3. It can enumerate even those websites that respond with code 200 even when resource is not present",
            image: "assets/images/others/wibuster.webp",
            sourceUrl: "https://github.com/tg21/wibuster",
          ),
        ]),
    const SkillsFormat(
        skillName: "Flutter",
        experienceTimeWithSkill: "1+ years",
        details:
            """I have been working with flutter for more than a year, and I think this is one of the best frameworks available for cross-platform development, backed by big community and all the benefits of dart language are major plus points.
I have worked with two major flutter projects.""",
        certifications: [
          const CertificationData(
            certification: "Introduction to flutter Certification",
            validity: "lifetime",
            url: "https://tg21.github.io/certs/fluuter_certificate.pdf",
            image:
                "https://www.londonappbrewery.com/wp-content/uploads/2015/06/London-App-Brewery-Logo-Large.png",
            infoCertificate: "Completed Introduction to Flutter Course with App Brewery",
          ),
        ],
        projects: [
          const ProjectsData(
            project: "The Last Dino Run",
            duration: "Dec 20 - April 21",
            aboutProject:
                """An android game based on Chrome's famous offline game. Made with flutter from scratch without using any game engines like flame or unity.
It is available on google play store.""",
            image: "https://appturtles.com/images/last_dino_square.webp",
            url:
                "https://play.google.com/store/apps/details?id=com.appturtles.the_last_dino",
          ),
          const ProjectsData(
            project: "This Website",
            duration: "April 21 - May 21",
            aboutProject:
                "This website is made with flutter form scratch. It uses flutter-web with html as web-renderer. Due to framework being very young and flutter-web even younger, there were many limitations to overcome on this project. This website works best on Chromium based desktop browsers but it is made responsive to a great extent and works good on mobile screens as well.",
            //image: "images/man.png",
            //url: "#",
            sourceUrl: "https://github.com/tg21/protfolio",
          ),
        ]),
        const SkillsFormat(
        skillName: "React",
        experienceTimeWithSkill: "1+ years",
        details:
            """I have been working with react/react-native on my personal projects for more than a year. The first react-native project I picked was ann android chat application, I learned most of react by working on it.
I have also been working on another react-typeScript web application project, it is in very early stage of development that is why it is not mentioned below""",
        certifications: [],
        projects: [
          const ProjectsData(
            project: "Unburden App",
            duration: "Dec 20 - April 21",
            aboutProject:
                """An android application made with react-native for anonymous peer support where users can login and share what's on there mind anonymously without fearing any judgement.
Its backend is powered by node js, express.js and mongo db. It was primarily deployed on an AWS EC2 instance, and currently is running on IBM cloud.
Unburden app is available on google play store.""",
            image: "https://appturtles.com/unburden/assets/img/illus/icon.png",
            url: "https://appturtles.com/unburden",
          ),
        ]),
    const SkillsFormat(
        skillName: "JAVA",
        experienceTimeWithSkill: "1+ years",
        details:
            """I learned JAVA in college and most of the experience I have with JAVA is from working on my personal android projects. I think that JAVA is a very powerful language if not very developer friendly.
For android projects I now prefer Kotlin, which is much more developer friendly and just as powerful as JAVA""",
        certifications: [],
        projects: [
          const ProjectsData(
            project: "Android Web Scraper",
            duration: "Jan 18 - Dec 18",
            aboutProject:
                """An android based web-scraper made with the help of JSoup library. It can scrape static information from websites, using custom css selectors which can be changed in code at any time. It was designed to scrape multiple e-commerce sites for a given query simultaneously and give combined result to user.""",
            // image: "https://appturtles.com/unburden/assets/img/illus/icon.png",
            sourceUrl: "https://github.com/tg21/AndroidWebScraper",
          ),
          const ProjectsData(
            project: "Grenade Launcher",
            duration: "Mar 19 - July 19",
            aboutProject:
                """Grenade is a Launcher application for android. It has two branches one is built with JAVA and other with Kotlin.""",
            // image: "https://appturtles.com/unburden/assets/img/illus/icon.png",
            sourceUrl: "https://github.com/tg21/GrenadeLauncher",
          ),
        ]),
        const SkillsFormat(
        skillName: "Angular & C#",
        experienceTimeWithSkill: "2+ years",
        details:
            """I have been working with Angular JS and C# professionally for two years.
At TechMahindra I developed several internal/in-house web application with Angular JS and C# asp.net for the client which focused on tracking progress of client's production team, storing important day-to-day data in servers which helped eliminate need of maintaining excel sheets at client's end.
Automatic report generations from data and data visualisation for management that provided more insights into operations and make better business decisions.
Also used C# .net for desktop application development.
""",
        certifications: [],
        projects: []),
  ];
}

class ContactData {
  static const bg_image = "assets/images/6contact.webp";
  static const List<ContactClass> contacts = [
    const ContactClass(
      contactName: "Gmail",
      icon: FontAwesomeIcons.solidEnvelope,
      url: "mailto:gautamtushar21@gmail.com",
      iconColor: Colors.white,
      bgColor: Colors.red,
      textColor: Colors.white,
    ),
    const ContactClass(
      contactName: "Twitter",
      icon: FontAwesomeIcons.twitter,
      url: "https://twitter.com/CoderWhoLived",
      iconColor: Colors.white,
      bgColor: Colors.lightBlueAccent,
      textColor: Colors.white,
    ),
    const ContactClass(
      contactName: "LinkedIn",
      icon: FontAwesomeIcons.linkedin,
      url: "https://www.linkedin.com/in/gautamtushar21",
      iconColor: Colors.white,
      bgColor: Colors.indigo,
      textColor: Colors.white,
    ),
    const ContactClass(
      contactName: "StackOverflow",
      icon: FontAwesomeIcons.stackOverflow,
      url: "https://stackoverflow.com/users/story/8737972",
      iconColor: Colors.deepOrange,
      textColor: Colors.black,
      bgColor: Colors.white,
    ),
    const ContactClass(
      contactName: "Hackerrank",
      icon: FontAwesomeIcons.hackerrank,
      url: "https://www.hackerrank.com/gautamtushar21",
      iconColor: Colors.white,
      textColor: Colors.white,
      bgColor: Colors.green,
    ),
    const ContactClass(
      contactName: "GitHub",
      icon: FontAwesomeIcons.github,
      url: "https://github.com/tg21",
      iconColor: Colors.white,
      textColor: Colors.white,
      bgColor: Colors.deepPurple,
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
