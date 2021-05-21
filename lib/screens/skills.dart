import 'package:flutter/material.dart';
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
              child: SkillsListView(setSkill: _setSkill),
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
          Text(selectedSkill.details),
          if (selectedSkill.certifications.isNotEmpty)
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Certifications",
                      style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                      )),
                  ResponsiveGridRow(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ...selectedSkill.certifications.map(
                          (cert) => ResponsiveGridCol(
                            lg: 6,
                            md: 12,
                            child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border(
                                      right: BorderSide(
                                          width: 1.0, color: Colors.black)),
                                ),
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
                                              softWrap: true,
                                              ),
                                            Row(
                                              children: [
                                                Text(
                                                  "validity: ",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold),
                                                ),
                                                Text(cert.validaity),
                                              ],
                                            ),
                                            InkWell(
                                                onTap: () {
                                                  _launchURL(cert.url!);
                                                },
                                                child: Text("view")),
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
            )
        ],
      ),
    );
  }
}

class SkillsListView extends StatefulWidget {
  final Function setSkill;

  SkillsListView({required this.setSkill});
  @override
  _SkillsListViewState createState() => _SkillsListViewState();
}

class _SkillsListViewState extends State<SkillsListView> {
  int hoveredSkill = -1;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(right: BorderSide(width: 1.0, color: Colors.black))),
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
                child: InkWell(
                  onTap: () {
                    widget.setSkill(e);
                  },
                  onHover: (hover) {
                    setState(() {
                      hoveredSkill = hover ? SkillsData.skills.indexOf(e) : -1;
                    });
                  },
                  child: Text(
                    e.skillName,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: SkillsData.skills.indexOf(e) == hoveredSkill
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
