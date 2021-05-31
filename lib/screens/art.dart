import 'dart:math';

import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:portfolio/data/primary.dart';

class ArtScreen extends StatelessWidget {
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
            image: NetworkImage(ArtData.bg_image), fit: BoxFit.cover),
      ),
      child: Container(
        //alignment: Alignment.sta,
        //color: Colors.blue[900]!.withAlpha(150),
        constraints: BoxConstraints(
          minHeight: size.height,
        ),
        //color: Colors.white24,
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          RotatedBox(
            quarterTurns: 3,
            child: Container(
              margin: EdgeInsets.all(20),
              child: Text(
                "SKETCHES",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 15),
              ),
            ),
          ),
          Spacer(),
          Container(
            //height: size.height/1.2,
            width: min(700, size.width / 1.3),
            margin: EdgeInsets.symmetric(vertical: 20),
            //width: size.width/2,
            alignment: Alignment.center,
            child: StaggeredGridView.countBuilder(
              crossAxisCount: 3,
              itemCount: ArtData.photos.length,
              scrollDirection: Axis.vertical,
              physics: NeverScrollableScrollPhysics(),

              primary: true,
              shrinkWrap: true,

              itemBuilder: (BuildContext context, int index) => Container(
                color: Colors.transparent,
                child: Image.network(
                  ArtData.photos[index],
                  fit: BoxFit.contain,
                  filterQuality: FilterQuality.none,
                ),
              ),
              staggeredTileBuilder: (int index) => StaggeredTile.fit(1),
              //StaggeredTile.extent(1,(index+1)*50),
              //  StaggeredTile.count((ArtData.photos.length/2).round(),ArtData.photos.length/2),
              //StaggeredTile.count(1,index.isEven ? 2 : 1),
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
            ),
          ),
          Spacer(),
        ]),
      ),
    );
  }
}
