import 'package:dougnut/controllers/home_controller.dart';
import 'package:dougnut/widgets/add_item_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

import '../widgets/text_widget.dart';

class FormPage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormBuilderState>();
    final TextEditingController _textController = TextEditingController();

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
              child: Column(
                children: [
                  FormBuilderTextField(name: 'textfield', enabled: true),
                  ElevatedButton(
                      onPressed: () {
                        controller.inputValue =
                            _formKey.currentState?.fields['textfield']?.value;


                       print( controller.inputValue );
                      },
                      child: Text('submit'))
                ],
              ),
              onChanged: () => print('form has changed'),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              initialValue: {
                'textfield': 'this is my initial value',
              },
              skipDisabled: true,
            ),
          )
        ],
      ),
      // formbuildtextfield2(height: 50,color: 0xff707070,hintText:"Enter password" ,attribute: "password",
      //     dividerColor:0xff1F1C34 ,errorText:"Enter a password first" ,font: "Nunito",keybordType: TextInputType.text,fontWeight:FontWeight.w400 ,fontSize: 15.0,
      //     formType: "text",dropDownList: [],submitAction: (){
      //
      //     })
    );
  }
}
