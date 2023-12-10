import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todos/screen/TasksScreen.dart';

import 'models/tasks.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return ChangeNotifierProvider<Data>(
    create:(context)=>Data() ,
    child:  MaterialApp(

        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body:Container(
      child:TasksScreen(),
    )
        ),
      )
      );
    
  }
}

class Data extends ChangeNotifier {
  List<Tasks> tasks =[ ];

  void AddTasks(String task){
    tasks.add(Tasks(name:task,isDone: false ));
    notifyListeners();
  }
  void DeleteTask (Tasks task){
    tasks.remove(task);
    notifyListeners();
  }

}
