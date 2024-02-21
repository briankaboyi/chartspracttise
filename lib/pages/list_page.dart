import 'package:dougnut/controllers/home_controller.dart';
import 'package:dougnut/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class ListPage extends GetView<HomeController> {

  @override
  Widget build(BuildContext context) {
  Get.log(',,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,${controller.myDataList[0]}');

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: TextWidget(
          value: 'myList',
          textAlign: TextAlign.center,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      )),
      body: Column(
        children: 
          controller.myDataList.map((e) {
return Text(e);
          }).toList(),
          // ListView.builder(

          //   itemCount: controller.myDataList.length,
          //   itemBuilder: (BuildContext, index) {
          //     Get.log('$index ddddddddddddddddddddddddddddddddddddddd');
          //     return Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child:Text(controller.myDataList[index]));
          //       //  Container(
          //       //   width: Get.width,
          //       //   height: 30,
          //       //   decoration: BoxDecoration(
          //       //     color: Color.fromARGB(255, 180, 1, 1),
          //       //   ),
          //       //   child: Text(controller.myDataList[int]),
          //       // ),
              
          //   }
          //   )
        
        
        
        
      ),
    );
  }
}
