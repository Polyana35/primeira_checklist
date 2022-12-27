import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:primeira_checklist/models/todo.dart';

part 'list_controller.g.dart';

class ListController = ListControllerBase with _$ListController;

abstract class ListControllerBase with Store {
  final TextEditingController addTodoTextController = TextEditingController();

  @observable
  String newTodoTitle = '';

  @action
  void setNewTodoTitle(String v) => newTodoTitle = v;

  @computed
  bool get isFormValid => newTodoTitle.isNotEmpty;

  @computed
  VoidCallback? get addTodoPressed => isFormValid ? addTodo : null;

  ObservableList<Todo> todoList = ObservableList<Todo>();

  @action
  void addTodo() {
    todoList.insert(0, Todo(newTodoTitle));
    addTodoTextController.clear();
    newTodoTitle = '';
  }
}
