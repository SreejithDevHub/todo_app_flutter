import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];

  //refernce
  final _mybox = Hive.box('mybox');

  //first opening app
  void createInitialData(){
    toDoList=[
      ["Welcome! Add your first task",false]
    ];
  }

  //load the data from database
  void loadData(){
    toDoList=_mybox.get('TODOLIST');
  }

  //update db
  void updatedb(){
    _mybox.put('TODOLIST', toDoList);
  }
}
