import 'package:flutter/material.dart';
import 'package:todoey_flutter/Models/task.dart';
import 'package:todoey_flutter/Widgets/task_tile.dart';


class TaskData extends ChangeNotifier {


  List<Task> _tasks = [
    Task(name: 'buy milk'),
    Task(name: ' go to school'),
    Task(name: 'buy grocery'),
  ];


  List get tasksListModel {
    return _tasks;
  }

  int get taskCounter {
      return _tasks.length;
  }

void addNewTask (String? newTask){
    final task = Task(name:newTask);
  _tasks.add(task);

  notifyListeners();
}




  int completedTasksCounter (){
    int i = 0;
    List <bool>listy = [];
    for ( _tasks[i].isDone ; i < _tasks.length; i++) {
      if (_tasks[i].isDone == true){
        listy.add(_tasks[i].isDone);
      }
    }
    notifyListeners();
    return listy.length;
}

void deleteTask (Task task){
if (_tasks.length ==1) {

  TaskTile(isChecked: null, taskTitle: 'empty list!', toggleCheckbox: null, removeTask:null) ;
  _tasks.add(Task(name: 'empty list!', ));


  _tasks.remove(task);

}
else {

  _tasks.remove(task);
}
    notifyListeners();
}

void updateCheckBox (Task task,){
    task.toggleDone();
    notifyListeners();

}






}