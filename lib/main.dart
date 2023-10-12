// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:test_project/pages/first_page.dart';
import 'package:test_project/pages/home_page.dart';
import 'package:test_project/pages/second_page.dart';
import 'package:test_project/pages/setting_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/firstpage':(context) => FirstPage(),
        '/secondpage':(context) => SecondPage(),
        '/homepage':(context) => HomePage(),
        '/settingpage':(context) => SettingPage(),
      },
    );
  }
}
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: const Color.fromARGB(255, 242, 223, 76),
//         appBar: AppBar(
//           title: Text(
//             "My App Bar",
//             style: TextStyle(color: Colors.black),
//           ),
//           backgroundColor: Colors.yellow,
//           elevation: 5,
//           centerTitle: true,
//           leading: Icon(
//             Icons.menu,
//             color: Colors.black,
//           ),
//           actions: [
//             IconButton(
//                 onPressed: () {},
//                 icon: Icon(
//                   Icons.logout,
//                   color: Colors.black,
//                 ))
//           ],
//         ),
//         // body: Center(
//         //   child: Container(
//         //     height: 300,
//         //     width: 300,
//         //     decoration: BoxDecoration(
//         //         borderRadius: BorderRadius.circular(25), color: Colors.green),
//         //     padding: EdgeInsets.symmetric(horizontal: 25, vertical: 60),
//         //     // child: Text(
//         //     //   "sdf",
//         //     //   style: TextStyle(
//         //     //       color: Colors.white,
//         //     //       fontWeight: FontWeight.bold,
//         //     //       fontSize: 25),
//         //     // ),
//         //     child: const Icon(
//         //       Icons.abc_outlined,
//         //       color: Colors.white,
//         //       size: 65,
//         //     ),
//         //   ),
//         // ),

//         body: Row(
//           // scrollDirection: Axis.horizontal,
//             children: [
//               Container(
//                 height: 700,
//                 width: 200,
//                 color: Colors.amber,
//               ),
//               Container(
//                 height: 700,
//                 width: 100,
//                 color: Colors.amber[200],
//               ),
//               Expanded(
//                 child: Container(
//                   height: 70,
//                   width: 50,
//                   color: Colors.amber[300],
//                 ),
//               ),
//             ]),
//       ),
//     );
//   }
// }
