
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_project/controller/user_name_controller.dart';

class UpdateProfileName extends StatefulWidget {
  const UpdateProfileName({super.key});

  @override
  State<UpdateProfileName> createState() => _UpdateProfileNameState();
}

class _UpdateProfileNameState extends State<UpdateProfileName> {
  final controller = Get.find<UserNameController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20,),
            CircleAvatar(radius: 40,),
            SizedBox(height: 20,),
            Text(controller.name.toString())
          ],
        ),
      ),
    );
  }
}
