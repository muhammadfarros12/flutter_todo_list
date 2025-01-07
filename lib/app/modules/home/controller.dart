import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list/app/data/models/task.dart';

import 'package:todo_list/app/data/services/storage/repository.dart';

class HomeController extends GetxController {
  TaskRepository taskRepository;
  HomeController({
    required this.taskRepository,
  });

  final formKey = GlobalKey<FormState>();
  final editController = TextEditingController();

  final tasks = <Task>[].obs;

  @override
  void onInit() {
    super.onInit();
    tasks.assignAll(taskRepository.readTask());
    ever(tasks, (_) => taskRepository.writeTask(tasks));
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
