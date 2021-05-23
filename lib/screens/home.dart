import 'package:flutter/material.dart';
import 'package:portfolio/data/primary.dart';

import '../components/responsive_grid.dart';

class HomeScreen extends StatelessWidget {
  final Map<dynamic, dynamic> homeData = data["homeData"];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // constraints: BoxConstraints(
      //   minHeight: size.height,
      // ),
      height: size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(homeData["bg-image"]), fit: BoxFit.cover),
      ),
      child: Container(
        alignment: Alignment.center,
        constraints: BoxConstraints(
          minHeight: size.height,
        ),
        //color: Colors.white24,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Spacer(),
            ResponsiveGridRow(
              //decoration: BoxDecoration(color: Colors.deepOrangeAccent),
              //   constraints: BoxConstraints(
              //     minHeight: size.height,
              // ),
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ResponsiveGridCol(
                  returnExpanded: true,
                  //alignment: Alignment.center,
                  //flex: 1,
                  lg: 6,
                  child: Container(
                    alignment: Alignment.center, //Alignment(-0.9, 0.9),
                    child: Image.asset(
                      homeData["user-image"],
                      height: 256,
                      width: 256,
                    ),
                  ),
                ),
                ResponsiveGridCol(
                  //flex: 1,
                  returnExpanded: true,
                  lg: 6,
                  child: Container(
                    // color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Align(
                        //   alignment: Alignment.bottomLeft,
                        //   child:
                        // ),
                        Text(
                          homeData['greeting']
                              .padRight(homeData['name'].length * 5, " "),
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white60,
                            // shadows: [
                            //   Shadow(
                            //       color: Colors.white54,
                            //       offset: Offset(0.5, 0.5),
                            //       blurRadius: 10)
                            // ],
                          ),
                          softWrap: false,
                        ),
                        Text(
                          homeData['name'],
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.white70,
                            // shadows: [
                            //   Shadow(
                            //       color: Colors.white54,
                            //       offset: Offset(1, 1),
                            //       blurRadius: 1)
                            // ],
                          ),
                        ),
                        Text(
                          homeData['title'],
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.white54,
                            // shadows: [
                            //   Shadow(
                            //       color: Colors.white54,
                            //       offset: Offset(0.5, 0.5),
                            //       blurRadius: 10)
                            // ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
