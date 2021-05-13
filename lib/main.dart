// /import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/floating_action_bar.dart';
import 'package:responsive_framework/responsive_framework.dart';
//import 'components/stacked_list_view.dart';
import 'package:portfolio/data/primary.dart';
import 'package:portfolio/data/screens_data.dart';
import 'screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context,widget) => ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context, widget!),
          maxWidth: 2048,
          minWidth: 450,
          defaultScale: true,
          breakpoints: [
            ResponsiveBreakpoint.resize(450, name: MOBILE),
            ResponsiveBreakpoint.autoScale(800, name: TABLET),
            ResponsiveBreakpoint.autoScale(1000, name: TABLET),
            ResponsiveBreakpoint.resize(1200, name: DESKTOP),
            ResponsiveBreakpoint.autoScale(2460, name: "4K"),
          ],
          background: Container(color: Color(0xFFF5F5F5))),
      
      debugShowCheckedModeBanner: false,
      title: data['AppTitle'],
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      //   visualDensity: VisualDensity.adaptivePlatformDensity,
      // ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

ScrollController actionBarController = ScrollController();
PageController pageController = PageController(initialPage: 0);

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    actionBarController.addListener(_update);
  }

  @override
  void dispose(){
    super.dispose();
    actionBarController.removeListener(_update);
  }

  void _update() {
    //actionBarController.onScroll?.call(actionBarController.position);
    this.setState(() {
              scrollPosition = actionBarController.position.pixels + 0;
              maxScroll = actionBarController.position.maxScrollExtent + 0;
            });
    setCurrentScreenIndex();
  }

  double scrollPosition = 1;
  double maxScroll = 1;

  List<dynamic> data = [
    HomeScreen(),
    'Cheese Dip',
    'Cola',
    'Fries',
    'Ice Cream',
    'Noodles',
    'Pizza',
  ];
  double getYAlignmentBasedOnScroll() {
    if (!actionBarController.hasClients) {
      return -1.025;
    }
    setState(() {
      maxScroll = actionBarController.position.maxScrollExtent + 0;
      scrollPosition = actionBarController.position.pixels + 0;
    });

    double yOffset;
    double halfMaxScroll = maxScroll / 2;
    //print('$maxScroll : $scrollPosition : $halfMaxScroll ---> ');
    if (scrollPosition < halfMaxScroll) {
      //print("lesser");
      yOffset = scrollPosition / halfMaxScroll - 1.02;
    } else {
      //print("greater");
      scrollPosition = maxScroll - scrollPosition;
      yOffset = 1.04 - scrollPosition / halfMaxScroll;
    }
    if (!yOffset.isFinite) {
      yOffset = -1.025;
    }
    //print('$maxScroll : $scrollPosition : $halfMaxScroll ---> $yOffset');
    return yOffset;
  }

  Size size = Size(0, 0);
  int actionBarItemsCount = screensData.length;
  void moveListToIndex(int index) {
    if (maxScroll == 1) {
      setState(() {
        maxScroll = actionBarController.position.maxScrollExtent + 0;
      });
    }
    double offset = 0;
    if (index > 0) {
      offset = maxScroll - size.height * (actionBarItemsCount - index - 1);
    }
    //print('$actionBarItemsCount : $index ---> $offset');
    actionBarController.animateTo(offset,
        duration: Duration(milliseconds: 1000), curve: Curves.ease);
  }

  int roundedCurrentScreenIndex = 0;
  double preciseCurrentScreenIndex = 0;
  void setCurrentScreenIndex() {
    if (maxScroll == 1) {
      setState(() {
        maxScroll = actionBarController.position.maxScrollExtent + 0;
        scrollPosition = actionBarController.position.pixels + 0;
      });
    }
    //offset = maxScroll - size.height * (actionBarItemsCount - index - 1);
    double index = -1 *
        (((maxScroll - scrollPosition) / size.height) -
            actionBarItemsCount +
            1);
    setState(() {
      preciseCurrentScreenIndex = index;
      roundedCurrentScreenIndex = index.round();
    });
    //print("$index.  :: ${index.round()}");
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    //final double itemHeight = size.height; // 400;
    return Scaffold(
      backgroundColor: Colors.white,
      // body: OpacityStackedList(size: size, controller: controller, itemsData: itemsData),
      body: Stack(children: [
        // Container(
        //   child: ListWheelScrollView(
        //     //itemCount: screensData.length,
        //     //scrollDirection: Axis.horizontal,
        //     //scrollDirection: Axis,
        //     itemExtent: size.height,
        //     diameterRatio: size.height / 2,
        //     //squeeze: 5.0,
        //     controller: actionBarController,
        //     children: [...screensData.map((e) => 
        //    Container(
        //         height: size.height,
        //         width: size.width,
        //         child: e.widget)
        //     ),],
        //     // itemBuilder: (BuildContext context, int index) {
        //     //   return Container(
        //     //     height: size.height,
        //     //     width: size.width,
        //     //     child: screensData[index].widget);
        //     // }
        //   ),
        // ),


        Container(
          child: ListView(
            controller: actionBarController,
            children: [...screensData.map((e) => 
           Container(
                height: size.height,
                width: size.width,
                child: e.widget)
            ),],
          ),
          // child: ListView.builder(
          //   itemCount: screensData.length,
          //   //scrollDirection: Axis.horizontal,
          //   //scrollDirection: Axis,
          //   controller: actionBarController,
          //   itemBuilder: (BuildContext context, int index) {
          //     return Container(
          //       height: size.height,
          //       width: size.width,
          //       child: screensData[index].widget);
          //   }
          // ),
        ),


        // if(false)
        // StackedListView(
        //   //padding: EdgeInsets.only(left: 20, right: 20, top: 10),
        //   itemCount: data.length,
        //   itemExtent: size.height,
        //   heightFactor: 1.0,
        //   controller: actionBarController,
        //   onScroll: (scrPos) => {
        //     this.setState(() {
        //       scrollPosition = scrPos.pixels + 0;
        //       maxScroll = scrPos.maxScrollExtent + 0;
        //     }),
        //     setCurrentScreenIndex(),
        //   },
        //   builder: (_, index) {
        //     return screensData[index].widget.runtimeType == String
        //         ? Container(
        //             width: size.height,
        //             decoration: BoxDecoration(
        //               //borderRadius: BorderRadius.all(Radius.circular(20.0)),
        //               image: DecorationImage(image: AssetImage(screensData[index].widget),fit: BoxFit.cover),
        //               color: Colors.white,
        //               boxShadow: [
        //                 BoxShadow(
        //                     color: Colors.black.withAlpha(100),
        //                     blurRadius: 10),
        //               ],
        //             ),
        //             child: Column(
        //               crossAxisAlignment: CrossAxisAlignment.start,
        //               children: [
        //                 Text(
        //                   screensData[index].widget,
        //                   style: TextStyle(
        //                       fontSize: 24, fontWeight: FontWeight.bold),
        //                 ),
        //               ],
        //             ),
        //             //padding: EdgeInsets.all(20),
        //           )
        //         : screensData[index].widget;
        //   },
        // ),
        FloatingActionBar(
            size: size,
            preciseCurrentScreenIndex: preciseCurrentScreenIndex,
            roundedCurrentScreenIndex: roundedCurrentScreenIndex,
            yOffset: getYAlignmentBasedOnScroll(),
            moveListToIndex: moveListToIndex,
            ),
        Container(
          alignment: Alignment.bottomCenter,
          child: Icon(
            Icons.expand_more,
            color: Colors.white10,
            size: 100,
          ),
        )
      ]),
    );
  }
}
