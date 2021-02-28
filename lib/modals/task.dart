class Task{
  final String name;
  bool checked;
  Task({this.name,this.checked=false});
  void toggleCheck()
  {
    checked=!checked;
  }
}