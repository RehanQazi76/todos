import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';
import 'package:todos/main.dart';
class AddTasks extends StatefulWidget {
  

  @override
  State<AddTasks> createState() => _AddTasksState();
}

class _AddTasksState extends State<AddTasks> {

  final Tasks= TextEditingController();

  @override
  void dispose(){
    Tasks.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.grey,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        ),
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("ADD TASKS",
            textAlign: TextAlign.center,
            style: TextStyle(
              
              fontSize: 30,
              color: Colors.blue,
              fontWeight:FontWeight.w300,
            ),
            ),
            SizedBox(height: 10,),
            Expanded(
              child: TextField(
                controller: Tasks,
                autofocus: true,
            
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              Provider.of<Data>(context,listen: false).AddTasks(Tasks.text.toString());
              Tasks.clear();
              Navigator.pop(context);
            }, child: Text("ADD"))
          ],
        ),
      ),
    );;
  }
}