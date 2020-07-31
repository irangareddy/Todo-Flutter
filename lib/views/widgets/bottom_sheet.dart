
import 'package:Todo/controllers/task_controller.dart';
import 'package:Todo/views/contants/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    String newTaskTitle;


    return Consumer<TaskController>(
        builder: (context, taskController, child) =>
       Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 10.0,
              ),
              TextField(
                autofocus: true,
                onChanged: (value) {
                  newTaskTitle = value;
                },
              ),
              SizedBox(
                height: 16.0,
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width - 20,
                child: FlatButton(
                  color: kPrimaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      side: BorderSide(color: kPrimaryColor)),
                  onPressed: (){
                    taskController.addTask(newTaskTitle);
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Add Task',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
