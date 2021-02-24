import 'package:flutter/material.dart';
import 'package:todo_app/models/task.dart';
import "package:todo_app/widgets/tasks_tile.dart";

class TasksList extends StatefulWidget {
  // const TasksList({Key key,}) : super(key: key);
  final List<Task> tasks;
  TasksList({this.tasks});
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TasksTile(
            taskTitle: widget.tasks[index].name,
            isChecked: widget.tasks[index].isDone,
            checkboxCallback: (checkboxState) {
              setState(() {
                widget.tasks[index].toggleDone();
              });
            });
      },
      itemCount: widget.tasks.length,
    );
  }
}

/*
ListView(
      children: [
        TasksTile(taskTitle: tasks[0].name, isChecked: tasks[0].isDone,),
        TasksTile(taskTitle: tasks[1].name, isChecked: tasks[1].isDone,),
        TasksTile(taskTitle: tasks[2].name, isChecked: tasks[2].isDone,),
      ],
    );

*/
