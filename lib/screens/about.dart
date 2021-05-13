import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio/data/primary.dart';
import 'package:portfolio/data/types.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AboutData.bg_image), fit: BoxFit.cover),
          gradient: LinearGradient(colors: [
            Colors.black,
            Colors.black54
            // Color(0xFF090654),
            // Color(0xFF2D0E41),
            // Color(0xFF441333),
            // Color(0xFF77262A),
          ]),
          //  color: Color(0xFF090654),
        ),
        child: Container(
          color: Color.fromARGB(175, 33, 0, 31),
          //padding: EdgeInsets.only(top: 10, left: 30, right: 10),
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Center(
            child: Column(
              children: [
                HeaderRow(
                  icon: Icons.person,
                  heading: AboutData.screenTitle,
                ),
                Container(
                  //About User
                  padding: EdgeInsets.only(right: 10, top: 20),
                  child: Text(
                    AboutData.about_summary,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white70,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                HeaderRow(
                  icon: Icons.work,
                  heading: "Experience",
                ),
                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ...AboutData.experience.map((exp) => ExperienceTile(
                              size: size,
                              exp: exp,
                            ))
                      ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ExperienceTile extends StatelessWidget {
  final ExperianceData exp;
  const ExperienceTile({
    Key? key,
    required this.size,
    required this.exp,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        constraints: BoxConstraints(
            maxWidth: size.width / (AboutData.experience.length + 1)),
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: exp.color,
                width: 10,
                //height: 50,
              ),
              SizedBox(
                width: 10,
              ),
              DefaultTextStyle(
                style: TextStyle(color: Colors.white70),
                child: Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 3),
                        child: Text(
                          exp.organisation,
                          style: TextStyle(
                              color: exp.color,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 3),
                        child: Text(
                          exp.jobTitle,
                          style: TextStyle(
                              color: Colors.white.withAlpha(230),
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                      Container(
                        height: 2,
                        width: size.width / (AboutData.experience.length + 1),
                        color: exp.color,
                      ),
                      //if(exp.info != null)
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 3),
                        child: Text(
                          exp.info,
                          softWrap: true,
                        ),
                      ),
                      Text(
                        exp.timeSpan,
                        style: TextStyle(color: exp.color),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class HeaderRow extends StatelessWidget {
  final IconData icon;
  final String heading;
  const HeaderRow({Key? key, required this.icon, required this.heading})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30),
      child: Row(
        //Page Title
        children: [
          Icon(
            this.icon,
            color: Colors.white70,
            size: 35,
          ),
          SizedBox(
            width: 20,
          ),
          //DecoratedBox(decoration: Decoration(),child: SizedBox(),)
          Text(
            this.heading.toUpperCase(),
            style: TextStyle(
              fontSize: 35,
              color: Colors.white70,
            ),
          )
        ],
      ),
    );
  }
}
