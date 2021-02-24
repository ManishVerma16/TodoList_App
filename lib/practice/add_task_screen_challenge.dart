import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
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
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(),
            ),
            SizedBox(
              height: 20.0,
            ),
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
          ],
        ),
      ),
    );
  }
}
