// import 'package:flutter/material.dart';
// import 'package:todo_app/models/task.dart';
// import 'package:todo_app/screens/add_task_screen.dart';
// import 'package:todo_app/widgets/tasks_list.dart';

// class TasksScreen extends StatefulWidget {
//   @override
//   _TasksScreenState createState() => _TasksScreenState();
// }

// class _TasksScreenState extends State<TasksScreen> {
//   List<Task> tasks = [
//     Task(name: 'Buy milk'),
//     Task(name: 'Buy Fruits'),
//     Task(name: 'Buy Sweets'),
//     Task(name: 'Buy Snacks'),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.lightBlueAccent,
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           showModalBottomSheet(
//             context: context,
//             builder: (context) => AddTaskScreen((newTaskTitle) {
//               // print(newTaskTitle);
//               setState(() {
//                 tasks.add(Task(name: newTaskTitle));
//               });
//               Navigator.pop(context);
//             }),
//           );
//         },
//         child: Icon(Icons.add),
//         backgroundColor: Colors.lightBlueAccent,
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             padding: EdgeInsets.only(
//               top: 60.0,
//               left: 30.0,
//               right: 30.0,
//               bottom: 30.0,
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 CircleAvatar(
//                   child: Icon(
//                     Icons.list,
//                     size: 30.0,
//                     color: Colors.lightBlueAccent,
//                   ),
//                   backgroundColor: Colors.white,
//                   radius: 30.0,
//                 ),
//                 SizedBox(
//                   height: 10.0,
//                 ),
//                 Text(
//                   'Todoey',
//                   style: TextStyle(
//                     fontSize: 50.0,
//                     fontWeight: FontWeight.w700,
//                     color: Colors.white,
//                   ),
//                 ),
//                 Text(
//                   '${tasks.length}',
//                   //'12 Task',
//                   style: TextStyle(
//                     fontSize: 18.0,
//                     color: Colors.white,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: Container(
//               padding: EdgeInsets.symmetric(
//                 horizontal: 20.0,
//               ),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(20.0),
//                     topRight: Radius.circular(20.0)),
//               ),
//               //child: TasksList(tasks: tasks),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }