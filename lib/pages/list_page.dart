import 'package:dougnut/controllers/home_controller.dart';
import 'package:dougnut/pages/list_info.dart';
import 'package:dougnut/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class ListPage extends GetView<HomeController> {

  @override
  Widget build(BuildContext context) {
  print(controller.myDataList);


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
        body: ListView.builder(
            itemCount: controller.myDataList.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                  
                    Get.to(ListInfo(index:index));
                  },
                  child: Container(
                    width: Get.width,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 204, 188, 188),
                    ),
                    child: Center(
                        child: Text(
                      controller.myDataList[index]['title'],
                      style: TextStyle(fontSize: 24),
                    )),
                  ),
                ),
              );
            }));
  }
}
