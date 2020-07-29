import 'package:Todo/widgets/task_tile.dart';
import 'package:flutter/material.dart';
import 'package:Todo/models/task.dart';

class TasksList extends StatefulWidget {

  final List<Task> tasks;

  TasksList({this.tasks});

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: ListView(
          children: widget.tasks.map((task) => TaskTile(
            taskTitle: task.name,
            isChecked: task.isDone,
            checkboxCallBack: (checkboxState){
              setState(() {
                task.toggleDone();
              });
            },
          ),).toList(),
        ),
      ),
    );
  }
}
