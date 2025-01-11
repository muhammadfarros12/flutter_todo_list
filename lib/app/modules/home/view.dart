import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list/app/core/utils/extensions.dart';
import 'package:todo_list/app/core/value/colors.dart';
import 'package:todo_list/app/data/models/task.dart';
import 'package:todo_list/app/modules/home/controller.dart';
import 'package:todo_list/app/modules/home/widgets/add_card.dart';
import 'package:todo_list/app/modules/home/widgets/task_card.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(4.0.wp),
              child: Text(
                'My List',
                style: TextStyle(
                  fontSize: 24.0.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              children: [
                // TaskCard(
                //     task: Task(title: 'title', icon: 0xe59c, color: '#ff0000')),
                // TaskCard(
                //     task: Task(title: 'title', icon: 0xe59c, color: '#ff0000')),
                LongPressDraggable(
                  onDragStarted: () => controller.changeDeleting(true),
                  onDraggableCanceled: (_, __) => controller.changeDeleting(false),
                  onDragEnd: (_) => controller.changeDeleting(false),
                    feedback: Opacity(opacity: 0.8, child: TaskCard(
                      task: Task(title: 'title', icon: 0xe59c, color: '#ff0000')),),
                  child: TaskCard(
                      task: Task(title: 'title', icon: 0xe59c, color: '#ff0000')),
                ),
                // ...controller.tasks.map((element) => LongPressDraggable(
                //   onDragStarted: () => controller.changeDeleting(true),
                //   onDraggableCanceled: (_, __) => controller.changeDeleting(false),
                //   onDragEnd: (_) => controller.changeDeleting(false),
                //   feedback: Opacity(opacity: 0.8, child: TaskCard(task: element),),
                //   child: TaskCard(task: element))),
                AddCard()
              ],
            )
          ],
        ),
      ),
      floatingActionButton: Obx(
        () => FloatingActionButton(
          backgroundColor: controller.deleting.value ? Colors.red : blue,
          onPressed: () {},
          child: Icon( controller.deleting.value? Icons.delete : Icons.add, color: Colors.white,),
        ),
      ),
    );
  }
}
