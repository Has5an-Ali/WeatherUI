// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:intl/intl.dart';
import 'package:weatheruiapp/consts/fontstyle.dart';
import 'package:weatheruiapp/consts/images.dart';
import 'package:weatheruiapp/consts/strings.dart';

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
        padding: EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            "Islamabad".text.fontFamily(bold).letterSpacing(3).size(32).make(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/weather/01d.png',
                  width: 85,
                  height: 85,
                ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "39$degree",
                      style: TextStyle(
                          color: Vx.gray800,
                          fontSize: 28,
                          fontFamily: semibold)),
                  TextSpan(
                      text: "Sunny",
                      style: TextStyle(
                          color: Vx.gray800,
                          fontSize: 28,
                          fontFamily: semibold))
                ]))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton.icon(
                    onPressed: null,
                    icon: Icon(Icons.expand_less_rounded),
                    label: "41$degree".text.make()),
                TextButton.icon(
                    onPressed: null,
                    icon: Icon(Icons.expand_more_rounded),
                    label: "22$degree".text.make())
              ],
            ),
            10.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(3, (index) {
                var iconlist = [clouds, humidity, windspeed];
                var values = ["80%", "50%", "2.3 Km/h"];
                return Column(
                  children: [
                    Image.asset(
                      iconlist[index],
                      width: 60,
                      height: 60,
                    ).box.gray200.roundedSM.make(),
                    10.heightBox,
                    values[index].text.gray400.make(),
                  ],
                );
              }),
            ),
            10.heightBox,
            Divider(),
            10.heightBox
          ],
        ),
      ),
    );
  }
}
