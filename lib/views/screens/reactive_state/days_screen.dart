import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_project/controller/todo_controller.dart';

class DaysScreen extends StatefulWidget {
  const DaysScreen({super.key});

  @override
  State<DaysScreen> createState() => _DaysScreenState();
}

class _DaysScreenState extends State<DaysScreen> {
  final controller = Get.find<TodoController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Days'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(height: 20,),
            TextFormField(
              controller: controller.todoController,
              decoration: InputDecoration(
                hint: Text('Enter day'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                )
              ),
            ),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                controller.add(controller.todoController.text);
                Get.snackbar('Success', 'Record added',duration: Duration(seconds: 2),backgroundColor: Colors.green,colorText: Colors.white);
                controller.todoController.clear();
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
            SizedBox(height: 20,),
            Expanded(
              child: Obx( () =>
                    ListView.builder(
                    itemCount: controller.todoList.length,
                    itemBuilder: (context,index){
                    return ListTile(
                    title: Text(controller.todoList[index],
                    ),
                      trailing: IconButton(onPressed: (){
                        controller.remove(index);
                        Get.snackbar('Success', 'Record deleted',duration: Duration(seconds: 2),backgroundColor: Colors.green,colorText: Colors.white);
                      }, icon: Icon(Icons.delete,color: Colors.red,)),
                  );
                }),
              ),
            )


          ],
        ),
      ),
    );
  }
}
