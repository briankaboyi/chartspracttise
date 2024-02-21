import 'package:dougnut/controllers/home_controller.dart';
// import 'package:dougnut/widgets/add_item_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';


class FormPage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormBuilderState>();

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Form"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: FormBuilder(
              key: _formKey,
              onChanged: () =>
                  Get.log(_formKey.currentState?.fields['textfield']?.value),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              initialValue: {
                'textfield': 'this is my initial value',
              },
              skipDisabled: true,
              child: Column(
                children: [
                  FormBuilderTextField(name: 'textfield'),
                  ElevatedButton(
                      onPressed: () {
                        controller.content = _formKey.currentState?.value;
                        _formKey.currentState?.save();

                        Get.log('saved');
                      },
                      child: Text('save')),
                  ElevatedButton(
                      onPressed: () {
                        controller.content =
                            _formKey.currentState?.fields['textfield']?.value;

                        Get.log(controller.content);
                      },
                      child: Text('print')),
                ],
              ),
            ),
          )
        ],
      ),

    );
  }
}
