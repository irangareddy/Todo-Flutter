
import 'package:Todo/controllers/task_controller.dart';
import 'package:Todo/views/contants/constants.dart';
import 'package:Todo/views/widgets/bottom_sheet.dart';
import 'package:Todo/views/widgets/tasks_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class TasksScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskController>(
      builder: (context, taskController, child) =>
          Scaffold(
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
                    ' ${taskController.taskCount} Tasks',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            TasksList(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kPrimaryColor,
          child: Icon(Icons.add,size: 30.0,),
          onPressed: () {
            showModalBottomSheet(context: context,
              builder: (context) => AddTaskScreen(),
            );
          }


        ),
      ),
    );
  }
}
