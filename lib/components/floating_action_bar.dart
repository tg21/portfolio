import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:portfolio/data/screens_data.dart';

import '../data/screens_data.dart';

// import '../data/screens_data.dart';

class FloatingActionBar extends StatefulWidget {
  final Size size;
  final List<GlobalKey> itemKeys;
  final ScrollController actionBarController;
  final List<ScreenData> listItems;

  // final double preciseCurrentScreenIndex;
  // final int roundedCurrentScreenIndex;
  // final double yOffset;
  // final Function moveListToIndex;

  const FloatingActionBar({
    Key? key,
    required this.size,
    required this.itemKeys,
    required this.actionBarController,
    required this.listItems,

    // required this.preciseCurrentScreenIndex,
    // required this.roundedCurrentScreenIndex,
    // required this.yOffset,
    // required this.moveListToIndex,
  });

  @override
  _FloatingActionBarState createState() => _FloatingActionBarState();
}

class _FloatingActionBarState extends State<FloatingActionBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _fabAnimationController;
  late CurvedAnimation _myAnimation;

  List<double> itemSizeCache = [];

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < screensData.length; i++) {
      itemSizeCache.add(0);
    }
    _fabAnimationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
    );
    _myAnimation = CurvedAnimation(
        curve: Curves.fastOutSlowIn, parent: _fabAnimationController);
    _fabAnimationController.forward();

    widget.actionBarController.addListener(_update);
  }

  @override
  void dispose() {
    super.dispose();
    _fabAnimationController.dispose();
    widget.actionBarController.removeListener(_update);
  }

  void _update() {
    //actionBarController.onScroll?.call(actionBarController.position);
    this.setState(() {
      scrollPosition = widget.actionBarController.position.pixels + 0;
      maxScroll = widget.actionBarController.position.maxScrollExtent + 0;
    });
    setCurrentScreenIndex();
  }

  double scrollPosition = 1;
  double maxScroll = 1;

  // double alignmentWindowSize = 1 / (screensData.length/2).floor();
  double alignmentWindowSize = 2 / (screensData.length - 1);

  double _getWidgetHeight(int index) {
    var height = widget.itemKeys[index].currentContext
        ?.findRenderObject()
        ?.paintBounds
        .size
        .height;
    if (height != null) {
      itemSizeCache[index] = height;
    } else {
      // widget.itemKeys[index+1].currentContext
      //   ?.findRenderObject()
      //   ?.showOnScreen();
      height = itemSizeCache[index];
    }
    return height;
  }

  double getYAlignmentBasedOnScroll() {
    double yOffset;
    yOffset = -1;
    yOffset += (roundedCurrentScreenIndex * alignmentWindowSize);
    yOffset += ((preciseCurrentScreenIndex - roundedCurrentScreenIndex) *
        alignmentWindowSize);
    if (yOffset > 2) {
      yOffset -= 0.9;
    }
    return min(1.15, yOffset);
  }

  Size size = Size(0, 0);
  int actionBarItemsCount = screensData.length;
  void moveListToIndex(int index,
      {int duration = 1000, Curve curve = Curves.easeInOut}) {
    if (maxScroll == 1) {
      setState(() {
        maxScroll = widget.actionBarController.position.maxScrollExtent + 0;
      });
    }
    double offset = 0;
    //print(index);
    if (index > 0) {
      for (var i = 0; i < index; i++) {
        var height = _getWidgetHeight(i);
        if (height == 0) {
          widget.actionBarController.animateTo(offset,
              duration: Duration(milliseconds: 650), curve: Curves.linear);
          Timer(
              Duration(milliseconds: 750),
              () =>
                  moveListToIndex(index, duration: 650, curve: Curves.linear));
          return;
        }

        //print(widget.itemKeys[i]);
        //print('height : $i ---> $height');
        offset += height;
      }
      //offset = maxScroll - size.height * (actionBarItemsCount - index - 1);
    }
    //print(maxScroll);
    //print('Counts: $actionBarItemsCount : $index ---> $offset');
    widget.actionBarController.animateTo(offset,
        duration: Duration(milliseconds: duration), curve: curve);
  }

  int roundedCurrentScreenIndex = 0;
  double preciseCurrentScreenIndex = 0;
  void setCurrentScreenIndex() {
    if (maxScroll == 1) {
      setState(() {
        maxScroll = widget.actionBarController.position.maxScrollExtent + 0;
        scrollPosition = widget.actionBarController.position.pixels + 0;
      });
    }

    double index = 0;
    var tempScrPos = scrollPosition + 0;
    for (var i = 0; i < widget.itemKeys.length; i++) {
      var height = _getWidgetHeight(i);

      if (tempScrPos < height) {
        index += (tempScrPos / height);
        break;
      }
      tempScrPos -= height;
      index += 1;
    }

    //offset = maxScroll - size.height * (actionBarItemsCount - index - 1);

    // double index = -1 *
    //     (((maxScroll - scrollPosition) / size.height) -
    //         actionBarItemsCount +
    //         1);
    setState(() {
      preciseCurrentScreenIndex = index;
      roundedCurrentScreenIndex = index.round();
    });
    //print("$index.  :: ${index.round()}");
  }

  void showOrHideActionBar() {
    setState(() {
      if (_fabAnimationController.isCompleted) {
        _fabAnimationController.reverse();
      } else {
        _fabAnimationController.forward();
      }
    });
  }

  //OnHover Effect
  int hoveredIndex = -1;
  void actionBarItemHovered(bool hovered, int index) {
    if (!hovered) {
      setState(() {
        hoveredIndex = -1 + 0;
      });
    } else {
      setState(() {
        hoveredIndex = index + 0;
      });
    }
    //print("hovered $hovered $hoveredIndex $index");
  }

  Color getActionBarIconColorOnHover(index) {
    bool isHovered = hoveredIndex == index;
    if (((preciseCurrentScreenIndex + 0.3) >= index &&
        preciseCurrentScreenIndex <= index + 0.3)) {
      return isHovered ? Colors.black : Colors.white;
    } else {
      return isHovered ? screensData[index].primaryColor : Colors.black87;
    }
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.centerRight,
      child: Container(
        height: widget.size.height / 1.2,
        alignment: Alignment.centerRight,
        padding: EdgeInsets.only(right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizeTransition(
              axis: Axis.vertical,
              axisAlignment: -20.0,
              sizeFactor: _myAnimation,
              child: Container(
                alignment: Alignment.centerRight,
                child: Container(
                    height: widget.size.height / 1.5,
                    width: 70, //size.width * 0.1,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    //width: widget.size.width * 0.1,
                    //alignment: Alignment(0.95,0),
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.circular(50),
                      // boxShadow: [
                      //   BoxShadow(
                      //       color: Colors.black87,
                      //       blurRadius: 100,
                      //       offset: Offset(15, -5))
                      // ]
                    ),
                    child: Stack(
                      children: [
                        AnimatedContainer(
                          duration: Duration(milliseconds: 20),
                          alignment: Alignment(0, getYAlignmentBasedOnScroll()),
                          child: Container(
                            width: 50, //size.width *0.1,
                            height: 50,
                            decoration: BoxDecoration(
                              color: screensData[roundedCurrentScreenIndex < 0
                                      ? 0
                                      : roundedCurrentScreenIndex]
                                  .primaryColor, // Colors.redAccent,
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ),
                        Container(
                          width: 100,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ...screensData.map(
                                (item) => InkWell(
                                  onTap: () => moveListToIndex(
                                      screensData.indexOf(item)),
                                  onHover: (hover) => actionBarItemHovered(
                                      hover, screensData.indexOf(item)),
                                  child: Tooltip(
                                    decoration: BoxDecoration(
                                      color: Colors.white70,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    textStyle: TextStyle(
                                      color: item.primaryColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    child: Icon(
                                      item.icon,
                                      color: getActionBarIconColorOnHover(
                                          screensData.indexOf(item)),
                                    ),
                                    message: item.tooltip,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
            ),
            Container(
              width: 70,
              alignment: Alignment.center,
              child: RawMaterialButton(
                onPressed: showOrHideActionBar,
                hoverElevation: 10.0,
                constraints: const BoxConstraints(minHeight: 50, minWidth: 50),
                fillColor: screensData[roundedCurrentScreenIndex < 0
                        ? 0
                        : roundedCurrentScreenIndex]
                    .primaryColor,
                shape: CircleBorder(),
                child: AnimatedIcon(
                  icon: AnimatedIcons.menu_close,
                  color: Colors.white,
                  progress: _myAnimation,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
