import 'package:Todo/constants.dart';
import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {

  final Function addTaskCallback;

  AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {

    String newTaskTitle;


    return Container(
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
                  addTaskCallback(newTaskTitle);
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
    );
  }
}
