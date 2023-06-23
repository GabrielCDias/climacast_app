import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:climacast_app/view/begin/begin.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: BeginScreen(),
    );
  }
}
