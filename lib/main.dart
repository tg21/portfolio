// /import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/floating_action_bar.dart';
import 'package:responsive_framework/responsive_framework.dart';
//import 'components/stacked_list_view.dart';
import 'package:portfolio/data/primary.dart';
import 'package:portfolio/data/screens_data.dart';
import 'data/screens_data.dart';

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
            ResponsiveBreakpoint.resize(1000, name: TABLET),
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
class _MyHomePageState extends State<MyHomePage> {

  List<GlobalKey> widgetKeys = [];

  @override
  void initState() {
    super.initState();
    for(var i=0 ; i < screensData.length; i++) {
    widgetKeys.add(GlobalKey());
  }
  }

  @override
  void dispose(){
    super.dispose();
    actionBarController.dispose();
  }

  Size size = Size(0, 0);

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    //final double itemHeight = size.height; // 400;
    return Scaffold(
      backgroundColor: Colors.white,
      // body: OpacityStackedList(size: size, controller: controller, itemsData: itemsData),
      body: Stack(children: [
        Container(
          // child: ListView(
          //   physics: ClampingScrollPhysics(),
          //   controller: actionBarController,
          //   children: [...screensData.map((e) => 
          //  Container(
          //       // constraints: BoxConstraints(
          //       //   minHeight: size.height,
          //       // ),
          //       //height: size.height,
          //       //width: size.width,
          //       alignment: Alignment.topCenter,
          //       child: e.widget)
          //   ),],
          // ),
          child: ListView.builder(
            itemCount: screensData.length,
            physics: ClampingScrollPhysics(),
            controller: actionBarController,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                alignment: Alignment.topCenter,
                key: widgetKeys[index],
                child: screensData[index].widget,
                );
            }
          ),
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
            itemKeys: widgetKeys,
            actionBarController: actionBarController,
            listItems: screensData,
            // listItems: screensData,
            // preciseCurrentScreenIndex: preciseCurrentScreenIndex,
            // roundedCurrentScreenIndex: roundedCurrentScreenIndex,
            // yOffset: getYAlignmentBasedOnScroll(),
            // moveListToIndex: moveListToIndex,
            ),
      ]),
    );
  }
}
