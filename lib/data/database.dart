import 'package:hive/hive.dart';

class ToDoDatabase {
  List todoList = [];
  final _mybox = Hive.box('mybox');
  void createInitialData() {
    todoList = [
      ["make tutorial", false],
      ["do excercise", false],
    ];
  }

  void loadData() {
    todoList = _mybox.get("TODOLIST");
  }

  void updateDatabase() {
    _mybox.put("TODOLIST", todoList);
  }
}
