import 'package:dougnut/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class ListInfo extends GetView<HomeController> {
  final int index;

  ListInfo({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Center(child:Text('list title'))),
      body: Column(children: controller.myDataList[index].entries.map((e) => Text("${e.key}: ${e.value}")).toList())
     
    );
  }
}
