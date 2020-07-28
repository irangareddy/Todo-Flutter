import 'package:Todo/constants.dart';
import 'package:Todo/widgets/circle_checkbox.dart';
import 'package:flutter/material.dart';


class TaskTile extends StatefulWidget {

  final String task;

  const TaskTile({ Key key, this.task}): super(key: key);
  
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {

  bool isDone = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ListTile(
            title: Text(widget.task),
            trailing: CircleCheckbox(
              activeColor: kPrimaryColor,
              value: isDone,onChanged: (bool value){
                setState(() {
                  isDone = value;
                });
              },),
          ),
    );
  }
}

