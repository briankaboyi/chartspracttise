import 'dart:math';

import 'package:dougnut/entity/chart_data.dart';
import 'package:flutter/material.dart';

class HomeController{
  late List<ChartData> dataOne;

  late List<ChartData> dataTwo;



  List<Map<String,dynamic>> myData = [
    {
      "title": "data 1",
      "value": "100"
    },
    {
      "title": "data 2",
      "value": "200"
    },
    {
      "title": "data 3",
      "value": "300"
    }
  ];
  List<Map<String,dynamic>> myData2 = [
    {
      "title": "data 1",
      "value": "400"
    },
    {
      "title": "data 2",
      "value": "200"
    },
    {
      "title": "data 3",
      "value": "600"
    }
  ];
  Color getColor(){
    var randomColor = Color.fromRGBO(
        Random().nextInt(255),
        Random().nextInt(255),
        Random().nextInt(255),
        1.0
    );
    return randomColor;
  }

  void getData(){


    dataOne = myData.map((e){

      return ChartData(e['title'],double.parse(e['value'].replaceAll(',','')),getColor());
    }).toList();

    dataTwo = myData2.map((e){
      return ChartData(e['title'],double.parse(e['value'].replaceAll(',','')),getColor());
    }).toList();
  }
}