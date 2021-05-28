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
                  "Blog",
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
                ...BlogData.blogList.map((blog) => ResponsiveGridCol(
                      //returnExpanded: true,
                      //alignment: Alignment.center,
                      //flex: 1,
                      // xs: 6,
                      sm: 12,
                      md: 6,
                      lg: 4,
                      child: GestureDetector(
                        onTap: () {
                          _launchURL(blog.url);
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          color: blog.bgColor,
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Padding(
                              //   padding: const EdgeInsets.all(8.0),
                              //   child: FaIcon(
                              //     blog.icon,
                              //     size: 50,
                              //     color: blog.iconColor,
                              //   ),
                              // ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  blog.name,
                                  style: TextStyle(color: blog.textColor,fontSize: 17,fontWeight: FontWeight.bold),
                                  softWrap: true,
                                ),
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Tooltip(
                                      message: "share on twitter",
                                      child: RawMaterialButton(
                                        fillColor: Colors.transparent,
                                        elevation: 0,
                                        hoverElevation: 10,
                                        hoverColor: Colors.white,
                                        onPressed: () => _launchURL(
                                            "https://twitter.com/share?url=${blog.url}&text=${blog.name}&via=tushargautam.com&hashtags=hello,there"),
                                        child: Icon(
                                          FontAwesomeIcons.twitter,
                                          size: 15,
                                          color: Colors.lightBlueAccent,
                                        ),
                                      ),
                                    ),
                                    Tooltip(
                                      message: "share on twitter",
                                      child: RawMaterialButton(
                                        fillColor: Colors.transparent,
                                        elevation: 0,
                                        hoverElevation: 10,
                                        hoverColor: Colors.transparent,
                                        onPressed: () => _launchURL(
                                            "https://twitter.com/share?url=${blog.url}&text=${blog.name}&via=tushargautam.com&hashtags=hello,there"),
                                        child: Icon(
                                          FontAwesomeIcons.twitter,
                                          size: 15,
                                          color: Colors.lightBlueAccent,
                                        ),
                                      ),
                                    ),
                                  ],
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
