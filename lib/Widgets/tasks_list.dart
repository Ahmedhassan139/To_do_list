import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoey_flutter/Models/task_data.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  // Function toggleBoxState;
  //
  // TasksList(this.toggleBoxState);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (
        context,
        taskData,
        child,
      ) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final tasky = taskData.tasksListModel[index];
            return TaskTile(
                taskTitle: taskData.tasksListModel[index].name,
                isChecked: taskData.tasksListModel[index].isDone,
                toggleCheckbox: (checkboxState) {
                  taskData.updateCheckBox(tasky);
                }

                //     (bool? newValue, index) {
                //
                //   if (newValue != null) {
                //     Provider.of<TaskData>(context, listen: false).tasksListModel[index].isDone = newValue;
                //     Provider.of<TaskData>(context, listen: false).notifyListeners();
                //   }
                //   Provider.of<TaskData>(context).completedTasksCounter();
                // }
                ,
                removeTask: () {

                    taskData.deleteTask(tasky);

                });
          },
          itemCount: taskData.tasksListModel.length,
        );
      },
    );
  }
}
