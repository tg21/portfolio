import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio/components/responsive_grid.dart';
import 'package:portfolio/data/primary.dart';
import 'package:portfolio/data/types.dart';
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
            image: NetworkImage(SkillsData.bg_image), fit: BoxFit.cover),
      ),
      child: DefaultTextStyle(
        style: TextStyle(color: SkillsData.fontColor),
        child: Container(
          margin: EdgeInsets.all(size.width / 38), // 1920 div 38 ~ 50
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
                      SizedBox(
                        width: 15,
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
                                  Gravatar(imageUrl: cert.image!),
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
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            cert.infoCertificate!,
                                            style: TextStyle(fontSize: 16),
                                            softWrap: true,
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          DefaultTextStyle(
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: SkillsData.fontColor),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "validity: ",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(cert.validity),
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
                                              color: SkillsData.buttonFontColor,
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
              margin: EdgeInsets.only(top: 20, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.developer_board_outlined,
                        size: 35,
                      ),
                      SizedBox(
                        width: 15,
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
                          (proj) => ResponsiveGridCol(
                            lg: 6,
                            md: 12,
                            child: Container(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Gravatar(imageUrl: proj.image!),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Center(
                                              child: Text(
                                            proj.project,
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                            softWrap: true,
                                          )),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            proj.aboutProject,
                                            //maxLines: 1,
                                            //overflow: TextOverflow.ellipsis,
                                            style: TextStyle(fontSize: 16),
                                            softWrap: true,
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          RichText(
                                              text: TextSpan(
                                                  text: "Duration: ",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                    fontSize: 12,
                                                  ),
                                                  children: [
                                                TextSpan(
                                                  text: proj.duration,
                                                  style: TextStyle(
                                                    //color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                                ),
                                              ])),
                                          // DefaultTextStyle(
                                          //   style: TextStyle(
                                          //     fontSize: 12,
                                          //     color: SkillsData.fontColor,
                                          //   ),
                                          //   child: Row(
                                          //     children: [
                                          //       Text(
                                          //         "Duration: ",
                                          //         style: TextStyle(
                                          //             fontWeight:
                                          //                 FontWeight.bold),
                                          //       ),
                                          //       Text(proj.duration),
                                          //     ],
                                          //   ),
                                          // ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              if (proj.url != null)
                                                RawMaterialButton(
                                                  fillColor: Colors.pink,
                                                  hoverElevation: 10,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  textStyle: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                  child: Text("view"),
                                                  onPressed: () {
                                                    _launchURL(proj.url!);
                                                  },
                                                ),
                                              if (proj.sourceUrl != null)
                                                RawMaterialButton(
                                                  fillColor: SkillsData
                                                      .secondaryButtonColor,
                                                  hoverElevation: 10,
                                                  padding: EdgeInsets.all(10),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  textStyle: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                  child: Text("Source Code"),
                                                  onPressed: () {
                                                    _launchURL(proj.sourceUrl!);
                                                  },
                                                ),
                                            ],
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

class Gravatar extends StatelessWidget {
  final String imageUrl;
  const Gravatar({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        height: 100,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.transparent,
          image: DecorationImage(
            image: NetworkImage(
              imageUrl,
            ),
            fit: BoxFit.fitHeight,
            scale: 100,
          ),
        ));
  }
}

class SkillsListView extends StatelessWidget {
  final Function setSkill;
  final SkillsFormat selectedSkill;

  SkillsListView({required this.setSkill, required this.selectedSkill});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ResponsiveGridRow(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        shrinkChildren: true,
        children: [
          ResponsiveGridCol(
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
          ...SkillsData.skills.map((e) => ResponsiveGridCol(
                lg: 12,
                md: 2,
                sm: 3,
                xs: 3,
                //margin: EdgeInsets.all(5),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: RawMaterialButton(
                    fillColor: e == selectedSkill
                        ? SkillsData.color
                        : Colors.transparent,
                    elevation: 0,
                    hoverElevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14)),
                    textStyle: TextStyle(
                      color: e == selectedSkill
                          ? SkillsData.buttonFontColor
                          : SkillsData.fontColor,
                    ),
                    child: Text(e.skillName),
                    onPressed: () {
                      setSkill(e);
                    },
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
