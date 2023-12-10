import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';

import '../main.dart';

class TaskTile extends StatelessWidget {
   TaskTile({
    required this.isChecked, required this.TaskTitle , required this.checkBoxCallBck, required this.onPresses
  });

  final bool isChecked;
  final String TaskTitle;
  Function checkBoxCallBck;
  Function onPresses;


  @override
  Widget build(BuildContext context) {
    return  ListTile(
      onLongPress: (){
        onPresses();
        print("pressed");
      },
      title: Text(
        TaskTitle,
      
    style: TextStyle(decoration:isChecked? TextDecoration.lineThrough:null, fontSize:25 ),
        
    ),
    trailing: Container(
      width: 100,
      child: Checkbox(
        // tristate: true,
        value: isChecked, 
        onChanged: (value){
          checkBoxCallBck(value);
          print("object");
        },
      ),
    ),
    );
  }
}
// void checkedCallBack