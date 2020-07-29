import 'package:Todo/constants.dart';
import 'package:Todo/models/task.dart';
import 'package:Todo/widgets/bottom_sheet.dart';
import 'package:Todo/widgets/tasks_list.dart';
import 'package:flutter/material.dart';

class TasksScreen extends StatefulWidget {
  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {

  List<Task> tasks = [
    Task(name: '100DaysOfSwiftUI by Paul Haudson'),
    Task(name: 'DesignCourse by Meng To'),
    Task(name: 'Prepare for DXC Interview Exam'),
    Task(name: 'AMCAT Preperation'),
    Task(name: 'Nothing Serious'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 16.0,top: 50.0,bottom: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // CircleAvatar(
                //   backgroundColor: Colors.white,
                //   radius: 22.0,
                //   child: Icon(
                //     Icons.list,
                //     color: kPrimaryColor,
                //     size: 30.0,
                //   ),
                // ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Trello',
                  style: TextStyle(
                    fontSize: 34.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                Text(
                  ' ${tasks.length} Tasks',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          TasksList(tasks: tasks,)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        child: Icon(Icons.add,size: 30.0,),
        onPressed: () {
          showModalBottomSheet(context: context, builder: (context) =>
              AddTaskScreen((newTaskTitle) {
                setState(() {
                  tasks.add(Task(name: newTaskTitle));
                });
                Navigator.pop(context);
              }
          ),
          );
        }


      ),
    );
  }
}
