import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UnNamedPage1 extends StatelessWidget {
  const UnNamedPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: GestureDetector(
              onTap: (){
                Get.back(result: 'Malik');
              },
              child: GestureDetector(
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.blue,
                  child: Text(Get.arguments ?? ''),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
