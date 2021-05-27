 import 'package:flutter/material.dart';

 class ExperianceData{
  final String organisation;
  final String jobTitle;
  final String info;
  final String timeSpan;
  final Color color; //date span as string ,e.g- July 2019 - Aug 2021

  const ExperianceData({required this.organisation, required this.jobTitle, required this.timeSpan, this.info="",this.color = Colors.white70});
}

 class EducationData{
  final String degree;
  final String college;
  final String timeSpan;
  final Color color; //date span as string ,e.g- July 2019 - Aug 2021
  final Color fontColor;

  const EducationData({required this.degree, required this.college, required this.timeSpan, this.color = Colors.white70, this.fontColor = Colors.black});
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
  final String aboutProject;
  final String duration;
  final String? url;
  final String? sourceUrl;
  final String? image;

  const ProjectsData(
      {
      required this.project,
      required this.aboutProject,
      required this.duration,
      this.url,
      this.image,
      this.sourceUrl
      });
}


class ContactClass{
  final String contactName;
  final IconData icon;
  final String url;
  final Color iconColor;
  final Color textColor;
  final Color bgColor;

  const ContactClass({required this.contactName, required this.icon, required this.url, this.iconColor = Colors.black, this.textColor = Colors.black,this.bgColor=Colors.white70});
}
