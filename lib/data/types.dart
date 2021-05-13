 import 'package:flutter/material.dart';

 class ExperianceData{
  final String organisation;
  final String jobTitle;
  final String info;
  final String timeSpan;
  final Color color; //date span as string ,e.g- July 2019 - Aug 2021

  const ExperianceData({required this.organisation, required this.jobTitle, required this.timeSpan, this.info="",this.color = Colors.white70});
}