import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/floating_action_bar.dart';
import 'package:responsive_framework/responsive_framework.dart';
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
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        Container(
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
        FloatingActionBar(
            size: size,
            itemKeys: widgetKeys,
            actionBarController: actionBarController,
            listItems: screensData,
            ),
      ]),
    );
  }
}
