import 'package:Todo/widgets/task_tile.dart';
import 'package:flutter/material.dart';

class TasksList extends StatelessWidget {

  List <dynamic> _tasks = [
    ['100DaysOfSwiftUI by Paul Haudson',false],
    ['DesignCourse by Meng To',false]
  ];


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
          children: <Widget>[
            TaskTile(task: '100DaysOfSwiftUI by Paul Haudson'),
            TaskTile(task: 'DesignCourse by Meng To'),
            TaskTile(task: 'Prepare for DXC Interview Exam'),
          ],
        ),
      ),
    );
  }
}
