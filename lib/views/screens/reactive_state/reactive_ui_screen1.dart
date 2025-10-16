import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_project/views/screens/reactive_state/name_controller.dart';

class ReactiveUiScreen1 extends StatefulWidget {
  const ReactiveUiScreen1({super.key});

  @override
  State<ReactiveUiScreen1> createState() => _ReactiveUiScreen1State();
}

class _ReactiveUiScreen1State extends State<ReactiveUiScreen1> {
  final value = Get.find<NameController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 2'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(child: Obx(() => Text(value.count.toString(),style: TextStyle(fontSize: 20),)))
    );
  }
}
