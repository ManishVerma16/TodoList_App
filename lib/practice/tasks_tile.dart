import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  // const TasksTile({Key key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('This is task 1'),
      trailing: TaskCheckbox(),
    );
  }
}

class TaskCheckbox extends StatefulWidget {
  @override
  _TaskCheckboxState createState() => _TaskCheckboxState();
}

class _TaskCheckboxState extends State<TaskCheckbox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: isChecked,
      onChanged: (newValue) {
        setState(() {
          isChecked = newValue;
        });
      },
    );
  }
}
