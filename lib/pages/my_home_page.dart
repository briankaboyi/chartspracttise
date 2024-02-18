import 'package:dougnut/controllers/home_controller.dart';
import 'package:dougnut/widgets/chart_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class MyHomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    controller.getData();

    // TODO: implement build
    return Scaffold(
        body: Column(
      children: [
       ChartWidget(dataSource: controller.dataOne, dataSource2: controller.dataTwo,),
       ChartWidget(dataSource: controller.dataTwo),

      ],
    ));
  }
}
