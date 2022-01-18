import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoey_flutter/Widgets/tasks_list.dart';
import 'package:todoey_flutter/Widgets/add_task_screen.dart';
import 'package:todoey_flutter/Models/task_data.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/Models/task.dart';

class TasksScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.lightBlue,
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 40,
        ),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) => AddTaskScreen()
          );},
        backgroundColor: Colors.lightBlue,

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 30, right: 30, top: 60, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 50,
                    color: Colors.lightBlue,
                  ),
                  radius: 40,
                  backgroundColor: Colors.white,
                ),
                SizedBox(height: 30),
                Text(
                  'Todoey',
                  style: TextStyle(
                      fontSize: 60,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text('${Provider.of<TaskData>(context).taskCounter} tasks',
                    style: TextStyle(fontSize: 25, color: Colors.white)),
                SizedBox(height: 2, child: Container(color: Colors.grey,),),
                Text('${Provider.of<TaskData>(context).completedTasksCounter()} tasks finished',
                    style: TextStyle(fontSize: 25, color: Colors.white)),



                SizedBox(height: 30),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30)),
              ),
              child: TasksList(
    //                 (bool? newValue, index) {
    //
    // if (newValue != null) {
    //                 Provider.of<TaskData>(context, listen: false).tasksListModel[index].isDone = newValue;
    //                 Provider.of<TaskData>(context, listen: false).notifyListeners();
    //             }
    // Provider.of<TaskData>(context).completedTasksCounter();
    //           },






              ),
            ),
          ),
        ],
      ),
    );
  }
}
