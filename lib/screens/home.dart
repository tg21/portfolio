import 'package:flutter/material.dart';
import 'package:portfolio/data/primary.dart';
class HomeScreen extends StatelessWidget {
  final Map<dynamic,dynamic> homeData = data["homeData"];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(homeData["bg-image"]),fit: BoxFit.cover),
        ),
        child: Row(
          children: [
          Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment(-0.9,0.9),
                child: Image.asset(homeData["user-image"],height: 256,width: 256,),
                
            ),
          ),
          Expanded(
            flex: 1,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Align(
                    //   alignment: Alignment.bottomLeft,
                    //   child: 
                    // ),
                    Text(homeData['greeting'].padRight(homeData['name'].length *5," "),
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.black45,),
                      softWrap: false,
                      ),
                        Text(homeData['name'],
                    style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),
                    ),
                    Text(homeData['title'],
                    style: TextStyle(fontSize: 35,color: Colors.black54),
                    ),
                  ],
            ),
              ),
          ),
        ],),
      ),
    );
  }
}