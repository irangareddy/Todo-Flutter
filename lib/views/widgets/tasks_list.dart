import 'package:Todo/controllers/task_controller.dart';
import 'package:Todo/views/widgets/task_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskController>(
     builder: (context, taskController, child) =>
       Expanded(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
            ),
          ),
          child: ListView(
            children: taskController.tasks.map((task) => TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkboxCallBack: (checkboxState){
                taskController.toggleDone(task);
              },
              deleteTask: () {
                taskController.deleteTask(task);
              },
            ),).toList(),
          ),
        ),
      ),
    );
  }
}
