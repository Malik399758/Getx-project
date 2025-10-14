
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_project/views/screens/get_un_named_routes/un_named_page1.dart';

class UnNamedMainScreen extends StatefulWidget {
  const UnNamedMainScreen({super.key});

  @override
  State<UnNamedMainScreen> createState() => _UnNamedMainScreenState();
}

class _UnNamedMainScreenState extends State<UnNamedMainScreen> {
  String result = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){
                var res = Get.to(() => UnNamedPage1(),transition: Transition.topLevel,duration: Duration(seconds: 2),
                  arguments: 'ali',
                );
                if(res != null){
                  setState(() async {
                    result = await res;
                  });
                }
              },
              child: Container(
                width: 200,
                height: 200,
                color: Colors.green,
                child: Text(result.toString()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
