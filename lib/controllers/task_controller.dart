
import 'dart:collection';

import 'package:Todo/models/task.dart';
import 'package:flutter/cupertino.dart';

class TaskController extends ChangeNotifier {

  List<Task> _tasks = [
    Task(name: '100DaysOfSwiftUI by Paul Haudson'),
    Task(name: 'DesignCourse by Meng To'),
    Task(name: 'Prepare for DXC Interview Exam'),
    Task(name: 'AMCAT Preperation'),
    Task(name: 'Nothing Serious'),
  ];

//  List<Task> _completed = [];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  Task _task = Task();

  Task get task => _task;

  void toggleDone(Task task) {
    task.isDone = !task.isDone;
//    _completed.add(task);
    notifyListeners();
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTile) {
    _tasks.add(Task(name: newTaskTile));
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

}