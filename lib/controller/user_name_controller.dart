
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class UserNameController extends GetxController{
  var name = ''.obs;
  final TextEditingController nameController = TextEditingController();

  void updateText(String val){
    name.value = val;
  }
}