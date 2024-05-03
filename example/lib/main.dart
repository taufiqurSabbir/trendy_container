import 'package:flutter/material.dart';
import 'package:trendy_container/trendy_container.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TrendyContainer(
              title: 'This is title',
              subTitle: 'This is subtitle',
              titleTextStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),
              subtitleTextStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),
              isRectangle: true,
              padding: EdgeInsets.all(10),
              height: 150,
              width: 300,
              centerTitle: true,
              color1: Colors.red,
              color2: Colors.orange,
            ),
            SizedBox(height: 50,),
            TrendyContainer(
              title: 'This is title',
              subTitle: 'This is subtitle',
              titleTextStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),
              subtitleTextStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),
              padding: EdgeInsets.all(10),
              height: 150,
              width: 300,
              centerTitle: true,
              color1: Colors.green,
              color2: Colors.greenAccent,
            ),
            SizedBox(height: 50,),
            TrendyContainer(
              title: 'This is title',
              subTitle: 'This is subtitle',
              titleTextStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),
              subtitleTextStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),
              padding: EdgeInsets.all(10),
              height: 180,
              width: 300,
              isCircle: true,
              centerTitle: true,
              color1: Colors.blueAccent,
              color2: Colors.lightBlue,
            ),
          ],
        ),
      ),
    );
  }
}