import 'package:flutter/material.dart';
import 'listtile.dart';
import 'package:todo/modals/task.dart';
class TaskList extends StatefulWidget {
  final List<Task> tasks;
  TaskList({ this.tasks});
  @override
  _TaskListState createState() => _TaskListState();
}
class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return TaskTile(taskTitle:widget.tasks[index].name, isChecked:widget.tasks[index].checked,
        checkBoxValue:(bool newValue) {
          setState(() {
            widget.tasks[index].toggleCheck();
          });
        }
        );
    }, itemCount: widget.tasks.length,);
  }
}