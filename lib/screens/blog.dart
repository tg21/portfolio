import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/components/responsive_grid.dart';
import 'package:portfolio/data/primary.dart';
import 'package:url_launcher/url_launcher.dart';

class BlogScreen extends StatelessWidget {
  void _launchURL(String _url) async =>
      await canLaunch(_url) ? await launch(_url) : print('Cant launch $_url');
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // constraints: BoxConstraints(
      //   minHeight: size.height,
      // ),
      //height: size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(BlogData.bg_image), fit: BoxFit.cover),
      ),
      child: Container(
        //alignment: Alignment.sta,
        constraints: BoxConstraints(
          minHeight: size.height,
        ),
        //color: Colors.white24,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                //color: Colors.green,
                margin: EdgeInsets.all(20),
                child: Text(
                  "Contact",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ResponsiveGridRow(
              shrinkChildren: true,
              //decoration: BoxDecoration(color: Colors.deepOrangeAccent),
              //   constraints: BoxConstraints(
              //     minHeight: size.height,
              // ),
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ...ContactData.contacts.map((contact) => ResponsiveGridCol(
                      //returnExpanded: true,
                      //alignment: Alignment.center,
                      //flex: 1,
                      xs: 6,
                      sm: 4,
                      md: 3,
                      lg: 2,
                      child: GestureDetector(
                        onTap: () {
                          _launchURL(contact.url);
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          color: contact.bgColor,
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: FaIcon(
                                  contact.icon,
                                  size: 50,
                                  color: contact.iconColor,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  contact.contactName,
                                  style: TextStyle(color: contact.textColor),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
