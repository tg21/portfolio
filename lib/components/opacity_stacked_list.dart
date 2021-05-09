
import 'package:flutter/material.dart';

class OpacityStackedList extends StatelessWidget {
  const OpacityStackedList({
    Key? key,
    required this.size,
    required this.controller,
    required this.itemsData,
  }) : super(key: key);

  final Size size;
  final ScrollController controller;
  final List<Widget> itemsData;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: <Widget>[
          Expanded(
              child: ListView.builder(
                  controller: controller,
                  itemCount: itemsData.length,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    double scale = 1.0;
                    // if (topContainer > 0.5) {
                    //   scale = index + 0.5 - topContainer;
                    //   if (scale < 0) {
                    //     scale = 0;
                    //   } else if (scale > 1) {
                    //     scale = 1;
                    //   }
                    // }
                    return Opacity(
                      opacity: scale,
                      child: Transform(
                        transform:  Matrix4.identity()..scale(scale,scale),
                        alignment: Alignment.bottomCenter,
                        child: Align(
                            heightFactor: 0.7,
                            alignment: Alignment.topCenter,
                            child: itemsData[index]),
                      ),
                    );
                  })),
        ],
      ),
    );
  }
}