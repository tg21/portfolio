import 'package:flutter/material.dart';
import 'package:portfolio/data/types.dart';

const data = <dynamic, dynamic>{
  "AppTitle": "Tushar Gautam",
  "homeData": homeData,
};

const homeData = const <dynamic, dynamic>{
  "greeting": "Hello",
  "name": "I'm Tushar Gautam",
  "title": "Full Stack Developer",
  "bg-image": "images/1home.webp",
  "user-image": "images/man.png"
};

class AboutData {
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
  static const bg_image = "images/2about.webp";
}

class SkillsData {
  static const bg_image = "Images/3showcase.webp";
  static const list_title = "skills";
  static const List<SkillsFormat> skills = [
    const SkillsFormat(
        skillName: "python",
        expirenceTimeWithSkill: "4+ years",
        details: "I have worked on few of my personal python projects.",
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
            aboutCproject: "Python On Pails is an OpenSource lightweight web development framework that is designed to speed up development process",
            image: "images/man.png",
            url: "https://github.com",
          ),
          const ProjectsData(
            project: "WiBuster",
            duration: "2018 - Current",
            aboutCproject: "WiBuseter is an opesource website enumerator made with python3",
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
            aboutCproject: "An android game based on Chrome's game made with flutter from scratch without using any game engines like flame or unity",
            image: "images/man.png",
            url: "https://github.com",
          ),
          const ProjectsData(
            project: "This Website",
            duration: "2021 - 2021",
            aboutCproject: "WiBuseter is an opesource website enumerator made with python3",
            image: "images/man.png",
            url: "https://github.com",
          ),
        ]
        ),
  ];
}

class SkillsFormat {
  final String skillName;
  final String expirenceTimeWithSkill;
  final String details;
  final List<CertificationData> certifications;
  final List<ProjectsData> projects;

  const SkillsFormat(
      {required this.skillName,
      required this.expirenceTimeWithSkill,
      required this.details,
      required this.certifications,
      required this.projects});
}

class CertificationData {
  final String certification;
  final String? image;
  final String validaity;
  final String? url;
  final String? infoCertificate;

  const CertificationData(
      {required this.certification,
      this.image,
      required this.validaity,
      this.url,
      this.infoCertificate});
}

class ProjectsData {
  final String project;
  final String aboutCproject;
  final String duration;
  final String? url;
  final String? image;

  const ProjectsData(
      {required this.project,
      required this.aboutCproject,
      required this.duration,
      this.url,
      this.image});
}
