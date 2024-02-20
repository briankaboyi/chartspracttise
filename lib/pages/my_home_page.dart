import 'package:dougnut/controllers/home_controller.dart';
import 'package:dougnut/pages/formpage.dart';
import 'package:dougnut/widgets/chart_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class MyHomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    controller.getData();
    print(controller.currentDate);

    // TODO: implement build
    return Scaffold(
        body: Column(
      children: [
        ChartWidget(
          dataSource: controller.dataOne,
          dataSource2: controller.dataTwo,
          chart_title: 'Assets',
        ),
        ChartWidget(
          dataSource: controller.dataTwo,
          chart_title: 'Liabilities',
        ),
      ],
    ),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.add),onPressed: (){Get.to(FormPage());}),
    );
  }
}
