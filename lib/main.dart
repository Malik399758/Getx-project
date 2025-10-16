import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx_project/controller/user_name_controller.dart';
import 'package:getx_project/routes/app_routes.dart';
import 'package:getx_project/views/screens/get_un_named_routes/un_named_main_screen.dart';
import 'package:getx_project/views/screens/reactive_state/name_controller.dart';
import 'package:getx_project/views/screens/reactive_state/reactive_ui_screen.dart';
import 'package:getx_project/views/screens/reactive_state/update_name.dart';

void main() {
  //Get.put(NameController());
  Get.put(UserNameController());
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
      home: UpdateName()
      //ReactiveUiScreen(),
    );
  }
}
