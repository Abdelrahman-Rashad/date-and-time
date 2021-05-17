import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:task6/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreenView(
        navigateRoute: Home(),
        duration: 3000,
        imageSize: 130,
        imageSrc: "images/images.png",
        backgroundColor: Colors.white,
      ),
    );
  }
}
