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
        color: Colors.blue[900]!.withAlpha(150),
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
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: Colors.white),
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
                        child: Card(
                          margin: EdgeInsets.all(10),
                          elevation: 30,
                          color: blog.bgColor,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          // alignment: Alignment.center,
                          // decoration: BoxDecoration(
                          //   borderRadius: BorderRadius.circular(15),
                          //   color: blog.bgColor,
                          //   boxShadow: [BoxShadow(offset: Offset(5,10))],
                          // ),
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
                                  style: TextStyle(
                                      color: blog.textColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                  softWrap: true,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text(blog.details,
                                  style: TextStyle(
                                      color: Colors.grey[900],
                                      fontSize: 13,
                                      ),
                                  softWrap: true,
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    SocialButton(
                                        message: "share on twitter",
                                        url:
                                            "https://twitter.com/share?url=${blog.url}&text=${blog.name}&via=tushargautam.com&hashtags=hello,there",
                                        icon: FontAwesomeIcons.twitter,
                                        color: Colors.blueAccent),
                                    SocialButton(
                                        message: "share on linkedIn",
                                        url:
                                            "https://twitter.com/share?url=${blog.url}&text=${blog.name}&via=tushargautam.com&hashtags=hello,there",
                                        icon: FontAwesomeIcons.linkedinIn,
                                        color: Colors.black),
                                    SocialButton(
                                        message: "share on facebook",
                                        url:
                                            "https://twitter.com/share?url=${blog.url}&text=${blog.name}&via=tushargautam.com&hashtags=hello,there",
                                        icon: FontAwesomeIcons.facebook,
                                        color: Colors.indigo),
                                    SocialButton(
                                        message: "share on reddit",
                                        url:
                                            "https://twitter.com/share?url=${blog.url}&text=${blog.name}&via=tushargautam.com&hashtags=hello,there",
                                        icon: FontAwesomeIcons.redditAlien,
                                        color: Colors.deepOrangeAccent),
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

class SocialButton extends StatelessWidget {
  final String message;
  final String url;
  final IconData icon;
  final Color color;

  SocialButton(
      {required this.message,
      required this.url,
      required this.icon,
      required this.color});
  void _launchURL(String _url) async =>
      await canLaunch(_url) ? await launch(_url) : print('Cant launch $_url');
  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: message,
      child: RawMaterialButton(
        fillColor: color,
        elevation: 0,
        hoverElevation: 10,
        shape: CircleBorder(),
        hoverColor: color,
        onPressed: () => _launchURL(url),
        child: Icon(
          icon,
          size: 15,
          color: Colors.white,
        ),
      ),
    );
  }
}
