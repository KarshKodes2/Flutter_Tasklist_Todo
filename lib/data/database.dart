import 'package:hive/hive.dart';

class ToDoDataBase {
  List toDoList = [];

  // reference the box
  final _myBox = Hive.box('mybox');

// run at first time opening app
  void createInitialData() {
    toDoList = [
      ['Make tutorial', false],
      ['Do exercise', true],
      ['Fast today', false],
    ];
  }

  // load data from database
  void loadData() {
    toDoList = _myBox.get('TODOLIST');
  }

//update the database
  void updateDataBase() {
    _myBox.put('TODOLIST', toDoList);
  }
}


