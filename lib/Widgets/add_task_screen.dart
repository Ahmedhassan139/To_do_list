import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import'package:todoey_flutter/Models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  String? addedTask;

  @override
  Widget build(BuildContext context) {
    String? addedTask ;

    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              style: TextStyle(color: Colors.lightBlue, fontSize: 30),
              textAlign: TextAlign.center,
            ),
            TextField(autofocus: true, onChanged: (newText) {addedTask=newText;}),
            SizedBox(height: 30),
            FlatButton(
                disabledColor: Color(0xff33abea),
                height: 50,
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.lightBlue,
                onPressed: (){Provider.of<TaskData>(context, listen: false).addNewTask(addedTask)
                ;
                Navigator.pop(context);
                }
            )
          ],
        ),
      ),
    );
  }
}
