import 'package:flutter/material.dart';
// import 'package:todo_app/models/task.dart';
import "package:todo_app/widgets/tasks_tile.dart";
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TasksTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkboxCallback: (checkboxState) {
                taskData.updateTask(taskData.tasks[index]);
              },
              longpressCallback: () {
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
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

                  // setState(() {
                  //   widget.tasks[index].toggleDone();
                  // });

*/
