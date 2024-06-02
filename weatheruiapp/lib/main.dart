// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const WeatherUi(),
    );
  }
}

class WeatherUi extends StatelessWidget {
  const WeatherUi({super.key});

  @override
  Widget build(BuildContext context) {
    var time = DateFormat("yMMMMd").format(DateTime.now());
    return Scaffold(
      appBar: AppBar(
        title: "$time".text.make(),
        actions: [
          TextButton(
              onPressed: () {},
              child: Icon(
                Icons.light_mode,
                color: Vx.gray600,
              )),
          TextButton(
              onPressed: () {},
              child: Icon(
                Icons.more_vert,
                color: Vx.gray600,
              ))
        ],
      ),
      body: Container(
        child: Column(),
      ),
    );
  }
}
