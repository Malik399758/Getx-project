import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx_project/controller/todo_controller.dart';
import 'package:getx_project/controller/user_name_controller.dart';
import 'package:getx_project/views/screens/reactive_state/days_screen.dart';

void main() {
  //Get.put(NameController());
  Get.lazyPut(() => UserNameController());
  Get.put(TodoController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: AppRoutes.home,
      // getPages: AppRoutes.routes,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: DaysScreen()
      //UpdateName()
      //ReactiveUiScreen(),
    );
  }
}
