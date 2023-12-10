
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:todos/Widgets/taskTile.dart';
import 'package:todos/main.dart';
import 'package:todos/models/tasks.dart';

class TaskList extends StatefulWidget {

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
   

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: ((context, index) {
      return TaskTile(
        
        isChecked: Provider.of<Data>(context).tasks[index].isDone, 
        TaskTitle: Provider.of<Data>(context).tasks[index].name,
      checkBoxCallBck:(bool value){
      setState((){
        Provider.of<Data>(context, listen: false).tasks[index].toggleDone();
      });},
      onPresses: (){
        setState(() {
           Provider.of<Data>(context,listen: false).DeleteTask(Provider.of<Data>(context, listen: false).tasks[index]);
           
        });
        },

      ) ;
    } 
    ),itemCount:Provider.of<Data>(context).tasks.length,);
  }
}
