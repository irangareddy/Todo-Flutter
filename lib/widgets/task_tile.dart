import 'package:Todo/constants.dart';
import 'package:Todo/widgets/circle_checkbox.dart';
import 'package:flutter/material.dart';


class TaskTile extends StatelessWidget {

  TaskTile({this.taskTitle,this.isChecked,this.checkboxCallBack});

  final String taskTitle;
  final bool isChecked;
  final Function checkboxCallBack;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ListTile(
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

