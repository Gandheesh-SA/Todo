import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/components/listview.dart';
import 'package:todo/constants.dart';
import 'package:todo/screens/addtaskscreen.dart';
import 'package:todo/modals/task.dart';
class TaskScreen extends StatefulWidget {

  @override
  _TaskScreenState createState() => _TaskScreenState();
}
class _TaskScreenState extends State<TaskScreen> {
  List<Task> tasks =[];
  void addFunction(newTaskTitle)
  {
    setState(() {
      tasks.add(Task(name: newTaskTitle));
    });
    Navigator.pop(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xFF4BB543),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60.0,left: 30.0,right: 30.0,bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30.0,
                    child: Icon(Icons.list,size: 30.0,color:Color(0xFF4BB543) ,)
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text('todo',
                style:
                TextStyle(
                  color: Colors.white,
                  fontSize: 50.0,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 3.0,
                ),
                ),
                Text("${tasks.length} tasks",style:
                TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration:decorationBox,
              child: TaskList(tasks:tasks),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
            isScrollControlled: true,
            context: context, builder:(context)=>SingleChildScrollView(
              padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
              child: Container(
                  child: AddTaskScreen(addTask:addFunction,),
              ),
          ),
          );
        },
        backgroundColor: Color(0xFF4BB543),
        child: Icon(Icons.add),
      ),
    );
  }
}



