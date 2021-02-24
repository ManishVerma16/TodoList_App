// import 'package:flutter/material.dart';

// class TasksScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.lightBlueAccent,
//       floatingActionButton: FloatingActionButton(
//         onPressed: null,
//         child: Icon(Icons.add),
//         backgroundColor: Colors.lightBlueAccent,
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             padding: EdgeInsets.only(
//               top: 60.0,
//               right: 30.0,
//               bottom: 30.0,
//               left: 30.0,
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
//                   radius: 30.0,
//                   backgroundColor: Colors.white,
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
//                   '12 Tasks',
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
//               height: 300.0,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(20.0),
//                   topRight: Radius.circular(20.0),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
