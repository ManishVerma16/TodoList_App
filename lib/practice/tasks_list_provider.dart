import 'package:flutter/material.dart';
// import 'package:todo_app/models/task.dart';
import "package:todo_app/widgets/tasks_tile.dart";
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TasksTile(
            taskTitle: Provider.of<TaskData>(context).tasks[index].name,
            isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
            checkboxCallback: (checkboxState) {
              // setState(() {
              //   widget.tasks[index].toggleDone();
              // });
            });
      },
      itemCount: Provider.of<TaskData>(context).tasks.length,
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
