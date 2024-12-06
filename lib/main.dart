import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app_using_provider/todo/presentation/notifiers/task_provider.dart';
import 'package:todo_app_using_provider/todo/presentation/screens/add_todo.dart';
import 'package:todo_app_using_provider/todo/presentation/screens/todo_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: '/',
        routes: {
          '/': (_) => TodoList(),
          '/add-todo-screen': (_) => AddTodo(),
        },
      ),
    );
  }
}