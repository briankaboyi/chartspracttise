import 'dart:math';

import 'package:dougnut/entity/chart_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController {
  List<Map<String, dynamic>> myDataList = [
    {"title": "data 1", "value": "100" ,"subtitle": "my data 1",},
    {"title": "data 2", "value": "200","subtitle": "my data 2",},
    {"title": "data 3", "value": "300","subtitle": "my data 3",},
    {"title": "data 4", "value": "900","subtitle": "my data 4",},
    {"title": "data 5", "value": "100","subtitle": "my data 5",}

  ];
  String inputValue = "";
  var content;

  late List<ChartData> dataOne;

  late List<ChartData> dataTwo;

  var myDate = DateTime.now();
  var myDateForat;
  String currentDate = '';

  HomeController() {
    currentDate = '${myDate.day}-${myDate.month}-${myDate.year}';
  }
  List<Map<String, dynamic>> myData = [
    {"title": "data 1", "value": "100"},
    {"title": "data 2", "value": "200"},
    {"title": "data 3", "value": "300"}
  ];
  List<Map<String, dynamic>> myData2 = [
    {"title": "data 1", "value": "400"},
    {"title": "data 2", "value": "200"},
    {"title": "data 3", "value": "600"}
  ];

  List<Map<String, dynamic>> goalTypeData = [
    {
      'title': "Car",
      'img': "assets/Group 8238.png",
    },
    {
      'title': "House",
      'img': "./assets/Group 8242.png",
    },
    {
      'title': "Investments",
      'img': "./assets/Group 8237.png",
    },
    {
      'title': "Stocks",
      'img': "./assets/Group 8240.png",
    },
    {
      'title': "Cash",
      'img': "./assets/Group 8238.png",
    },
    {
      'title': "Other",
      'img': "./assets/Group 8248.png",
    },
  ];
  /////////////////////

  Color getColor() {
    var randomColor = Color.fromRGBO(Random().nextInt(255),
        Random().nextInt(255), Random().nextInt(255), 1.0);
    return randomColor;
  }

  void getData() {
    dataOne = myData.map((e) {
      return ChartData(
          e['title'], double.parse(e['value'].replaceAll(',', '')), getColor());
    }).toList();

    dataTwo = myData2.map((e) {
      return ChartData(
          e['title'], double.parse(e['value'].replaceAll(',', '')), getColor());
    }).toList();
  }
}
