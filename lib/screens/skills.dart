import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio/components/responsive_grid.dart';
import 'package:portfolio/data/primary.dart';
import 'package:url_launcher/url_launcher.dart';

class SkillScreen extends StatefulWidget {
  @override
  _SkillScreenState createState() => _SkillScreenState();
}

class _SkillScreenState extends State<SkillScreen> {
  SkillsFormat selectedSkill = SkillsData.skills.first;

  void _setSkill(SkillsFormat skill) {
    this.setState(() {
      selectedSkill = skill;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(
        minHeight: size.height,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(SkillsData.bg_image), fit: BoxFit.cover),
      ),
      child: DefaultTextStyle(
        style: TextStyle(color: SkillsData.fontColor),
        child: Container(
          margin: EdgeInsets.all(50),
          padding: EdgeInsets.all(15),
          color: Colors.white70,
          alignment: Alignment.topCenter,
          child: ResponsiveGridRow(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // List of Skills
              ResponsiveGridCol(
                sm: 12,
                lg: 2,
                child: SkillsListView(
                  setSkill: _setSkill,
                  selectedSkill: selectedSkill,
                  ),
              ),
              // Details of skills
              ResponsiveGridCol(
                sm: 12,
                lg: 8,
                child: SkillDetailView(
                  selectedSkill: selectedSkill,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SkillDetailView extends StatelessWidget {
  final SkillsFormat selectedSkill;

  void _launchURL(String _url) async => await canLaunch(_url)
      ? await launch(_url)
      : print('Cant launch this url');

  SkillDetailView({required this.selectedSkill});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              selectedSkill.skillName,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(14),
            child: Text(
              selectedSkill.details,
              style: TextStyle(
                  color: Colors.black87,
                  fontStyle: FontStyle.italic,
                  fontSize: 15),
              softWrap: true,
            ),
          ),
          // Certification Row Starts
          if (selectedSkill.certifications.isNotEmpty)
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.card_membership,
                        size: 35,
                      ),
                      Text("Certifications",
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                  ResponsiveGridRow(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ...selectedSkill.certifications.map(
                          (cert) => ResponsiveGridCol(
                            lg: 6,
                            md: 12,
                            child: Container(
                              // decoration: BoxDecoration(
                              //   color: Colors.white,
                              //   border: Border(
                              //       right: BorderSide(
                              //           width: 1.0, color: Colors.black)),
                              // ),
                              padding: EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Image.asset(
                                    cert.image!,
                                    height: 100,
                                    fit: BoxFit.contain,
                                    scale: 100,
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Center(
                                              child: Text(
                                            cert.certification,
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                            softWrap: true,
                                          )),
                                          Text(
                                            cert.infoCertificate!,
                                            style: TextStyle(fontSize: 16),
                                            softWrap: true,
                                          ),
                                          DefaultTextStyle(
                                            style: TextStyle(fontSize: 12),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "validity: ",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(cert.validaity),
                                              ],
                                            ),
                                          ),
                                          RawMaterialButton(
                                            fillColor: SkillsData.color,
                                            hoverElevation: 10,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            textStyle: TextStyle(
                                              color: SkillsData.secondFontColor,
                                            ),
                                            child: Text("view"),
                                            onPressed: () {
                                              _launchURL(cert.url!);
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ]),
                ],
              ),
            ),

          // Projects Row Starts
          if (selectedSkill.projects.isNotEmpty)
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.developer_board_outlined,
                        size: 35,
                      ),
                      Text("Projects",
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                  ResponsiveGridRow(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ...selectedSkill.projects.map(
                          (cert) => ResponsiveGridCol(
                            lg: 6,
                            md: 12,
                            child: Container(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Image.asset(
                                    cert.image!,
                                    height: 100,
                                    fit: BoxFit.contain,
                                    scale: 100,
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Center(
                                              child: Text(
                                            cert.project,
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                            softWrap: true,
                                          )),
                                          Text(
                                            cert.aboutProject,
                                            style: TextStyle(fontSize: 16),
                                            softWrap: true,
                                          ),
                                          DefaultTextStyle(
                                            style: TextStyle(fontSize: 12),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "validity: ",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(cert.duration),
                                              ],
                                            ),
                                          ),
                                          RawMaterialButton(
                                            fillColor: Colors.pink,
                                            hoverElevation: 10,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            textStyle: TextStyle(
                                              color: Colors.white,
                                            ),
                                            child: Text("view"),
                                            onPressed: () {
                                              _launchURL(cert.url!);
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ]),
                ],
              ),
            ),
        ],
      ),
    );
  }
}


class SkillsListView extends StatelessWidget {
  final Function setSkill;
  final SkillsFormat selectedSkill;

  SkillsListView({required this.setSkill, required this.selectedSkill});

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //     border: Border(right: BorderSide(width: 1.0, color: Colors.black))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Center(
              child: Text(
                SkillsData.list_title.toUpperCase(),
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ...SkillsData.skills.map((e) => Container(
                margin: EdgeInsets.all(5),
                child: RawMaterialButton(
                  fillColor: e == selectedSkill
                          ? SkillsData.color
                          : Colors.transparent,
                  elevation: 0,
                  hoverElevation: 0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                  textStyle: TextStyle(
                    color: e == selectedSkill
                          ? SkillsData.secondFontColor
                          : SkillsData.fontColor,
                  ),
                  child: Text(e.skillName),
                  onPressed: () {
                    setSkill(e);
                  },),
              ))
        ],
      ),
    );
  }
}