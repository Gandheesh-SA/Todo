import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
   final bool isChecked;
   final String taskTitle;
   final Function checkBoxValue;
  TaskTile({this.isChecked,this.taskTitle,this.checkBoxValue});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskTitle,
          style:TextStyle(
            decoration: isChecked? TextDecoration.lineThrough: null,
          ),
      ),
      trailing: Checkbox(
        activeColor: Color(0xFF4BB543),
        value: isChecked,
        onChanged: checkBoxValue,
      ),
    );
  }
}
/*(bool newValue)
{
setState(() {
isChecked=newValue;
});
}*/

