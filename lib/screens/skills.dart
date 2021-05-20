import 'package:flutter/material.dart';
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
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  border: Border(right: BorderSide(width: 1.0, color: Colors.black))
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child:Text(
                        SkillsData.list_title.toUpperCase(),
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                    ),
                    
                    ...SkillsData.skills.map((e) => InkWell(
                      onTap: (){
                        setState(() {
                          selectedSkill = e;
                        });
                      },
                      onHover: (hover){
                        setState(() {
                          hoveredSkill = hover ?  SkillsData.skills.indexOf(e) : -1;
                        });
                      },
                      child:Text(
                        e.skillName,
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: SkillsData.skills.indexOf(e) == hoveredSkill ? FontWeight.bold : FontWeight.normal,
                        ),
                        ),
                    ))

                ],),
              ),
            ),
            Expanded(
              flex: 8,
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
