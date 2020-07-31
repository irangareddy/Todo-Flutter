
import 'package:Todo/views/contants/constants.dart';
import 'package:Todo/views/widgets/circle_checkbox.dart';
import 'package:flutter/material.dart';


class TaskTile extends StatelessWidget {

  TaskTile({this.taskTitle,this.isChecked,this.checkboxCallBack,this.deleteTask});

  final String taskTitle;
  final bool isChecked;
  final Function checkboxCallBack;
  final Function deleteTask;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ListTile(
        onLongPress: deleteTask,
            title: Text(taskTitle),
            trailing: CircleCheckbox(
              activeColor: kPrimaryColor,
              value: isChecked,
              onChanged:checkboxCallBack,
            ),
          ),
    );
  }
}

