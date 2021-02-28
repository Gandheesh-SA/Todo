import 'package:flutter/material.dart';
class AddTaskScreen extends StatelessWidget {
  final Function addTask;
  AddTaskScreen({this.addTask});
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Add Task",
                style:  TextStyle(
                  fontSize: 30.0,
                  color: Color(0xFF4BB543),
                )
            ),
            SizedBox(height: 20.0,),
            TextField(
              autofocus: true,
              onChanged: (newText){
                newTaskTitle=newText;
              },
              textCapitalization: TextCapitalization.words,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Task Name',
              ),
            ),
            SizedBox(height: 20.0,),
            FlatButton(
              onPressed:(){
                addTask(newTaskTitle);
              },
              color: Color(0xFF4BB543),
              child: Text('Add',style: TextStyle(color: Colors.white ),),
            ),
          ],
        ),
      ),
    );
  }
}
