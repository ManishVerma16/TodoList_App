import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:todo_app/models/task.dart';
import 'package:todo_app/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  // final Function addTaskCallback;
  // AddTaskScreen(this.addTaskCallback);
  static String newTaskTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        padding: EdgeInsets.only(
          top: 20.0,
          left: 20.0,
          right: 30.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTaskTitle = newText;
                // print(newTaskTitle);
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            FlatButton(
              child: Text(
                'Add',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              color: Colors.lightBlueAccent,
              onPressed: () {
                Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

/*
Container(
              width: double.infinity,
              height: 50.0,
              child: FlatButton(
                onPressed: () => print('add task'),
                child: Text(
                  'Add',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                color: Colors.lightBlueAccent,
                textColor: Colors.white,
              ),
            ),


                // print(newTaskTitle);  //= 'task added'
                // addTaskCallback(newTaskTitle);

*/
