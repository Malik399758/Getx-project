
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/views/screens/reactive_state/name_controller.dart';
import 'package:getx_project/views/screens/reactive_state/reactive_ui_screen1.dart';

class ReactiveUiScreen extends StatefulWidget {
  const ReactiveUiScreen({super.key});

  @override
  State<ReactiveUiScreen> createState() => _ReactiveUiScreenState();
}

class _ReactiveUiScreenState extends State<ReactiveUiScreen> {
  var value = Get.find<NameController>();
  //var count = 0.obs;

  // void increase(){
  //   count++;
  // }
  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(onPressed: () => Get.to(() => ReactiveUiScreen1()), icon: Icon(Icons.arrow_forward)),
          )
        ],
        title: Text('Reactive State'),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Obx( () => Text(value.count.toString(),style: TextStyle(fontSize: 20),)))
        ],
      ),
      floatingActionButton: Column(
        spacing: 10,
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(onPressed: (){
            value.increment();
          },child: Icon(Icons.add),),
          FloatingActionButton(onPressed: (){
            value.decrement();
          },child: Icon(Icons.remove),),
        ],
      )
    );
  }
}

