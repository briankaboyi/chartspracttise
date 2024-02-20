import 'package:dougnut/controllers/home_controller.dart';
import 'package:dougnut/widgets/add_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class AddGoal extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
        Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.close),
            title: Text('Add Goal'),
            bottom: PreferredSize(preferredSize: Size(Get.width,90),
            child: Padding(
              padding: const EdgeInsets.only(top:33.0,bottom:33.0),
              child: Text('Select a Goal',style: TextStyle(fontSize: 20),),
            )),
          ),
          body:Column(
              children: controller.goalTypeData.map((e){
                return Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: AddItemWidget(img: e['img']??'', title:  e['title']??'',),
                );
              }).toList()

          ) ,
        );
  }
}
