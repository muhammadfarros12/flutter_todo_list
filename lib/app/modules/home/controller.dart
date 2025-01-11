import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list/app/data/models/task.dart';

import 'package:todo_list/app/data/services/storage/repository.dart';

class HomeController extends GetxController {
  TaskRepository taskRepository;
  HomeController({
    required this.taskRepository,
  });

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final editController = TextEditingController();

  final chipIndex = 0.obs;

  final deleting = false.obs;

  final tasks = <Task>[].obs;

  @override
  void onInit() {
    super.onInit();
    tasks.assignAll(taskRepository.readTask());
    ever(tasks, (_) => taskRepository.writeTask(tasks));
  }

  @override
  void onClose() {
    editController.dispose();
    super.onClose();
  }

  void changeChipIndex(int value){
    chipIndex.value = value;
  }

  void changeDeleting(bool value){
    deleting.value = value;
  }

  bool addTask(Task task){
    if (tasks.contains(task)) {
      return false;
    }
    tasks.add(task);
    return true;
  }
}
