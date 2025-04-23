import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/project_overview_screen.dart';
import 'screens/tasks_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Task App',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Arial'),
      debugShowCheckedModeBanner: false,
      // home: HomeScreen(),
      // home: ProjectOverviewScreen(),
      home: TasksListScreen(),
    );
  }
}
