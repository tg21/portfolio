import 'dart:math';

import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:portfolio/components/responsive_grid.dart';
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
            child: Entry.offset(
              xOffset: -10000,
              duration: Duration(seconds: 2),
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
          ),
          Spacer(),
          // StaggeredResponsiveGridRow(
          //   shrinkChildren: true,
          //   children: [
          //   ...ArtData.photos.map((photo) => StaggeredResponsiveGridCol(
          //     lg: 4,
          //     md:3,
          //     sm:6,
          //     xs:6,
          //     alignment: Alignment.centerLeft,
          //     child: Entry.offset(
          //                       child: Container(
          //             decoration: BoxDecoration(
          //               color: Colors.green,
          //               border: Border.all(),
          //             ),
          //             constraints: BoxConstraints(maxWidth: 300,maxHeight: 600),
          //             // width: 128,
          //             // height: 128,
          //             child: Image.network(photo,fit: BoxFit.contain,width: 200, filterQuality: FilterQuality.none,),
          //           ),
          //     ),
          //   ))
          // ]
          // ),
          // Wrap(
          //   spacing: 0,
          //   runSpacing: -10,
          //   //runAlignment
          //   children: [
          //     ...ArtData.photos.map((photo) => Container(

          //         decoration: BoxDecoration(
          //           color: Colors.green,
          //           border: Border.all(),
          //         ),
          //         //width: 300,
          //         //height: 300,
          //         child: Image.network(photo,fit: BoxFit.fill,width: 128,filterQuality: FilterQuality.none,,),
          //       ),),
          //   ],
          // ),
          // Container(
          //   height: size.height/1.3,
          //   child: GridView.count(
          //     //crossAxisCount: 3,
          //     //primary: true,
          //         //padding: const EdgeInsets.all(20),
          //         crossAxisSpacing: 0,
          //         mainAxisSpacing: 0,
          //         crossAxisCount: 3,
          //         childAspectRatio: 1,
          //         scrollDirection: Axis.vertical,
          //         shrinkWrap: true,
          //     children: [
          //       ...ArtData.photos.map((photo) => Container(

          //         decoration: BoxDecoration(
          //           color: Colors.green,
          //           border: Border.all(),
          //         ),
          //         //width: 300,
          //         //height: 300,
          //         child: Image.network(photo,fit: BoxFit.fill,),
          //       ),),
          //     ],
          //     ),
          // ),
          Container(
              //height: size.height/1.2,
              width:  min(700,size.width / 1.3),
              margin: EdgeInsets.symmetric(vertical:20),
              //width: size.width/2,
              alignment: Alignment.center,
              child: StaggeredGridView.countBuilder(
                crossAxisCount: 3,
                itemCount: ArtData.photos.length,
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),

                primary: true,
                shrinkWrap: true,


                itemBuilder: (BuildContext context, int index) => Entry.offset(
                  xOffset: (index == 0 || index == 3) ? -1000 : (index == 2 || index == 5) ? 1000 : 0 ,
                  yOffset: (index == 0 || index == 2 || index == 1) ? -1000 : 1000,// (index == 2 || index == 5 ) ? 1000,
                  duration: Duration(seconds: 2),
                                  child: Container(
                    color: Colors.green,
                    child: Image.network(
                      ArtData.photos[index],
                      fit: BoxFit.contain,
                      filterQuality: FilterQuality.none,
                    ),
                  ),
                ),
                staggeredTileBuilder: (int index) => 
                StaggeredTile.fit(1),
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
