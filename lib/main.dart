import 'package:flutter/material.dart';
import 'components/stacked_list_view.dart';
import 'data/primary.dart';
import 'screens/home.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: data['homeData']['name'],
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

List<dynamic> data = [
  HomeScreen(),
  'Cheese Dip',
  'Cola',
  'Fries',
  'Ice Cream',
  'Noodles',
  'Pizza',
  'Sandwich',
  'Wrap',
];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    
    final double itemHeight = size.height;// 400;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        // body: OpacityStackedList(size: size, controller: controller, itemsData: itemsData),
        body: StackedListView(
          //padding: EdgeInsets.only(left: 20, right: 20, top: 10),
          itemCount: data.length,
          itemExtent: itemHeight,
          heightFactor: 1.0,
          builder: (_, index) {
            return Container(
              width: itemHeight,
              decoration: BoxDecoration(
                //borderRadius: BorderRadius.all(Radius.circular(20.0)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.black.withAlpha(100), blurRadius: 10),
                ],
              ),
              child: data[index].runtimeType == String ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data[index],
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ) : data[index],
              //padding: EdgeInsets.all(20),
            );
          },
        ),
      ),
      // ),
    );
  }
}

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