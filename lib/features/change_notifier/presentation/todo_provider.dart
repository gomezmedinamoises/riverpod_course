import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_course/features/change_notifier/data/model/todo_model.dart';

class TodosNotifier extends ChangeNotifier {
  List<Todo> todos = [];

  void addTodo(String description) {
    todos.add(Todo.add(description: description));
    notifyListeners();
  }

  void toggleTodo(String id) {
    final todo = todos.firstWhere((todo) => todo.id == id);
    todo.completed = !todo.completed;
    notifyListeners();
  }

  void removeTodo(String id) {
    todos.removeWhere((todo) => todo.id == id);
    notifyListeners();
  }
}

final todosProvider = ChangeNotifierProvider<TodosNotifier>((ref) {
  return TodosNotifier();
});
