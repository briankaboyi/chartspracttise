import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class AddItemWidget extends GetView {
  final String img;
  final String title;
  AddItemWidget({required this.img, required this.title});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
       
        child: ListTile(
          leading: Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                  color: Color(0xffFEFAE0),
                  borderRadius: BorderRadius.circular(50)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.asset(img),
              )),
          title: Text(
            title,
            style: TextStyle(fontSize: 16,color: Color(0xff707070)),
          ),
          trailing: Container(


            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Color(0xff000000))),
            child: Icon(Icons.add,size: 22),
          ),
          // onTap: (){
          //   Get.to(AddItemController());
          // },
        ));
  }
}
