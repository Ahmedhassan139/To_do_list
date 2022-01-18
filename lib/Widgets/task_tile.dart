import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool? isChecked;
  final String? taskTitle;
  final Function? toggleCheckbox;
  final Function? removeTask;

  TaskTile({this.isChecked, this.taskTitle, this.toggleCheckbox, this.removeTask});

  @override
  Widget build(BuildContext context) {
    return ListTile(onLongPress:
      removeTask as void Function()?
    ,
      title: Text(
        taskTitle ?? '',
        style: TextStyle(
            decoration: isChecked == true   ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: toggleCheckbox as void Function(bool?)?,
        activeColor: Colors.lightBlue,
      ),

    );
  }
}
