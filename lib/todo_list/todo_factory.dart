import 'Todo.dart';
class TodoFactory {

  static List todoList() {
    Todo lakeTodo = Todo("Lake", "Lake Statefull Widget","/lake");
    Todo easyHomeTodo =Todo("Easy Home", "最简单的的Demo首页", "/easyHome"); 
    Todo chatTodo =Todo('ChatUI', '简单的聊天UI', '/chatList');
    Todo contactTodo =Todo("Contact","电话联系人", '/contact');
    return [easyHomeTodo, lakeTodo, chatTodo, contactTodo];
  }
  
}