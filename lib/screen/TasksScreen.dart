import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';
import 'package:todos/screen/AddTaskScreen.dart';

import '../Widgets/taskList.dart';
import '../Widgets/taskTile.dart';
import '../main.dart';
import '../models/tasks.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  bool isChecked=false;
 
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
      onPressed: (){
        showModalBottomSheet(
          context: context,
           builder: 
           (BuildContext context) =>AddTasks());
      },
      backgroundColor: Colors.lightBlueAccent,
      child: Icon(Icons.add),

      ),
      body: 
         Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
        padding: EdgeInsets.only(top: 60, bottom:30, right: 30, left: 30),

           child: Column(
          children: [

            
          CircleAvatar(
            radius: 60.0,
            backgroundColor: Colors.white,
            child: Icon(Icons.list,
            size: 60.0,
            color: Colors.lightBlueAccent,
            ),
          ),
          SizedBox(height:10 ,),

          Text("TODO",
          style: TextStyle(color: Colors.white,
          fontSize: 50,
        fontWeight: FontWeight.w700),
          ),
          Text('${Provider.of<Data>(context).tasks.length} Tasks',
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.w500,
            color: Colors.white

          ),),
          ],),
            ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(borderRadius:BorderRadius.only(topLeft: Radius.circular(20.0), topRight:Radius.circular(20.0)),color: Colors.white, ) ,
              padding: const EdgeInsets.all(10.0),
              child: TaskList(),
            ),
          )
          
      
        ]),
      
    );
  }
}
