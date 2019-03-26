import 'Todo.dart';
class TodoFactory {

  static List todoList() {
    Todo lakeTodo = Todo("Lake", "Lake Statefull Widget","/lake");
    Todo easyHomeTodo =Todo("Easy Home", "最简单的的Demo首页", "/easyHome"); 
    Todo chatTodo =Todo('ChatUI', '简单的聊天UI', '/chatList');
    return [easyHomeTodo, lakeTodo, chatTodo];
  }
  
}