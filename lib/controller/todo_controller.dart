
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class TodoController extends GetxController{
  var todoList = <String>[].obs;
  final todoController = TextEditingController();

  void add(String todo){
    todoList.add(todo);
  }

  void remove(int ind){
    todoList.removeAt(ind);
  }
}