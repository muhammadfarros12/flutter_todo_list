import 'package:get/get.dart';
import 'package:todo_list/app/data/providers/task/provider.dart';
import 'package:todo_list/app/data/services/storage/repository.dart';
import 'package:todo_list/app/modules/home/controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(
        taskRepository: TaskRepository(taskProvider: TaskProvider())));
  }
}
