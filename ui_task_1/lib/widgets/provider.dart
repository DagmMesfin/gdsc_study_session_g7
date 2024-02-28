import 'package:flutter/material.dart';
import 'model.dart';

class TodoListProvider extends ChangeNotifier {
  List<TodoList> todoModels = [];

  void addTodoModel(TodoList todoModel) {
    todoModels.add(todoModel);
    notifyListeners();
  }

  void removeToDoModel(TodoList todoModel) {
    for (int i = 0; i < todoModels.length; i++) {
      if (todoModel.taskname == todoModels[i].taskname) {
        todoModels.remove(todoModels[i]);
        break;
      }
    }
    notifyListeners();
  }

  void updateToDoModel(TodoList oldTodoModel, TodoList newTodoModel) {
    removeToDoModel(oldTodoModel);
    addTodoModel(newTodoModel);
    notifyListeners();
  }
}
