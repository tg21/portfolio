import 'package:flutter/material.dart';
import 'package:portfolio/data/screens_data.dart';

class FloatingActionBar extends StatefulWidget {
  final Size size;
  final double preciseCurrentScreenIndex;
  final int roundedCurrentScreenIndex;
  final double yOffset;
  final Function moveListToIndex;

  const FloatingActionBar(
      {Key? key,
      required this.size,
      required this.preciseCurrentScreenIndex,
      required this.roundedCurrentScreenIndex,
      required this.yOffset,
      required this.moveListToIndex});

  @override
  _FloatingActionBarState createState() => _FloatingActionBarState();
}

class _FloatingActionBarState extends State<FloatingActionBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _fabAnimationController;
  late CurvedAnimation _myAnimation;

  void showOrHideActionBar() {
    setState(() {
      if(_fabAnimationController.isCompleted){
      _fabAnimationController.reverse();
    }else{
      _fabAnimationController.forward();
    }
    });
    
    // _animationCompleted = !_animationCompleted;
    // _animationCompleted
    //     ? _fabAnimationController.forward()
    //     : _fabAnimationController.reverse();
    // actionBarVerticalAlignment = -2;
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
    if (((widget.preciseCurrentScreenIndex + 0.3) >= index &&
        widget.preciseCurrentScreenIndex <= index + 0.3)) {
      return isHovered ? Colors.black : Colors.white;
    } else {
      return isHovered ? screensData[index].primaryColor : Colors.black;
    }
  }



  @override
  void initState() {
    super.initState();
    _fabAnimationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
    );
    _myAnimation = CurvedAnimation(
        curve: Curves.fastOutSlowIn, parent: _fabAnimationController);
    _fabAnimationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _fabAnimationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
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
                          alignment: Alignment(0, widget.yOffset),
                          child: Container(
                            width: 50, //size.width *0.1,
                            height: 50,
                            decoration: BoxDecoration(
                              color: screensData[widget.roundedCurrentScreenIndex].primaryColor, // Colors.redAccent,
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ),
                        Container(
                          width: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ...screensData.map(
                                (item) => InkWell(
                                  onTap: () => widget
                                      .moveListToIndex(screensData.indexOf(item)),
                                  onHover: (hover) => actionBarItemHovered(
                                      hover, screensData.indexOf(item)),
                                  child: Tooltip(
                                    child: Icon(
                                      item.icon,
                                      color: getActionBarIconColorOnHover(
                                          screensData.indexOf(
                                              item)), // hoveredIndex == screensData.indexOf(item) ? item['primaryColor'] :  Colors.black,
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
                    // elevation: elevation,
                    // focusElevation: focusElevation,
                    hoverElevation: 10.0,
                    // highlightElevation: highlightElevation,
                    // disabledElevation: disabledElevation,
                    constraints: const BoxConstraints(minHeight:50,minWidth:50),
                    // materialTapTargetSize: materialTapTargetSize,
                    fillColor: screensData[widget.roundedCurrentScreenIndex].primaryColor,
                    // focusColor: focusColor,
                    //hoverColor: Colors.black,
                    // splashColor: splashColor,
                    // textStyle: textStyle,
                    shape: CircleBorder(),
                    // clipBehavior: clipBehavior,
                    // focusNode: focusNode,
                    // autofocus: autofocus,
                    
                    child: AnimatedIcon(
                    icon: AnimatedIcons.menu_close,
                    color: Colors.white,
                    progress: _myAnimation,
                  ),
                  ),
                ),
            // Container(
            //   alignment: Alignment.centerRight,
            //   width: 70,
            //   child: GestureDetector(
            //       child: Container(
            //     decoration: BoxDecoration(
            //       color: screensData[widget.roundedCurrentScreenIndex]
            //           ['primaryColor'],
            //       borderRadius: BorderRadius.circular(30),
            //     ),
            //     child: IconButton(
            //       icon: AnimatedIcon(
            //         icon: AnimatedIcons.menu_close,
            //         progress: _myAnimation,
            //       ),
            //       onPressed: showOrHideActionBar,
            //     ),
            //   )),
            // )
          ],
        ),
      ),
    );
  }
}
