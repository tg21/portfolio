import 'package:flutter/material.dart';
import 'package:portfolio/components/responsive_grid.dart';
import 'package:portfolio/data/primary.dart';

class SkillScreen extends StatefulWidget {
  @override
  _SkillScreenState createState() => _SkillScreenState();
}

class _SkillScreenState extends State<SkillScreen> {
  int hoveredSkill = -1;
  SkillsFormat selectedSkill = SkillsData.skills.first;
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
          // rowColumn: !ResponsiveWrapper.of(context).isSmallerThan(DESKTOP),
          // rowCrossAxisAlignment: CrossAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ResponsiveGridCol(
              //flex: 2,
              sm:12,
              lg:2,
              child: Container(
                decoration: BoxDecoration(
                    border: Border(right: BorderSide(width: 1.0, color: Colors.black))
                    ),
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
                              setState(() {
                                selectedSkill = e;
                              });
                            },
                            onHover: (hover) {
                              setState(() {
                                hoveredSkill =
                                    hover ? SkillsData.skills.indexOf(e) : -1;
                              });
                            },
                            child: Text(
                              e.skillName,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: SkillsData.skills.indexOf(e) ==
                                        hoveredSkill
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                              ),
                            ),
                          ),
                        ))
                  ],
                ),
              ),
            ),
            ResponsiveGridCol(
              // flex: 8,
              sm:12,
              lg:8,
              child: Container(
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
                    if(selectedSkill.certifications.isNotEmpty)
                      Container(
                        child: Column(children: [
                          Text("Certifications"),
                          ResponsiveGridRow(children: [
                            ...selectedSkill.certifications.map((cert) => ResponsiveGridCol(
                              lg: 6,
                              child: Container(
                              child: Text(cert.certification),
                            ),),),
                          ])
                          
                        ],),
                      )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
