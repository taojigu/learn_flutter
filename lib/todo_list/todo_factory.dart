import 'Todo.dart';
class TodoFactory {

  static List todoList() {
    Todo lakeTodo = Todo("Lake", "Lake Statefull Widget","/lake");
    Todo easyHomeTodo =Todo("Easy Home", "最简单的的Demo首页", "/easyHome"); 
    return [easyHomeTodo, lakeTodo];
  }
  
}