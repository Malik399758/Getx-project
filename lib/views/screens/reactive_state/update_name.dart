import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_project/views/screens/reactive_state/update_profile_name.dart';

import '../../../controller/user_name_controller.dart';

class UpdateName extends StatefulWidget {
  const UpdateName({super.key});

  @override
  State<UpdateName> createState() => _UpdateNameState();
}

class _UpdateNameState extends State<UpdateName> {
  final controller = Get.find<UserNameController>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(onPressed: (){
              Get.to(() => UpdateProfileName());
            }, icon: Icon(Icons.arrow_forward)),
          )
        ],
        title: Text('Update Name'),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 10,),
            TextFormField(
              controller: controller.nameController,
              decoration: InputDecoration(
                hint: Text('Enter name'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                )
              ),
            ),
            SizedBox(height: 10,),
            GestureDetector(
              onTap: (){
                controller.updateText(controller.nameController.text);
                controller.nameController.clear();
              },
              child: Container(
                width: double.infinity,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Center(child: Text('Save')),
              ),
            ),
            Divider(),
           //Text(controller.name.toString())
           Obx(() => Text(controller.name.toString()),),
          ],
        ),
      ),
    );
  }
}
