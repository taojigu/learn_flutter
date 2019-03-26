import 'package:flutter/material.dart';
import 'package:learn_flutter/chatting/chat_list_page.dart';
import 'package:learn_flutter/todo_list/Todo.dart';
import 'todo_factory.dart';
import 'package:learn_flutter/lake_page.dart';
import 'package:learn_flutter/easy_home_page.dart';

// Çode Source : https://flutter.dev/docs/cookbook/navigation/passing-data

class TodoListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List todoList = TodoFactory.todoList();
    Widget homePage = TodoListPage(title:"TodoListPage", todoList: todoList);
    MaterialApp  app =  MaterialApp(title: "TodoApp",
    theme: ThemeData(primarySwatch: Colors.amber),
    home: homePage,
    initialRoute: "/todoHome",
    routes: {
      "/todoHome" : (context) => homePage,
      "/lake" : (context) => LakePage(),
      '/easyHome' : (context) => EasyHomePage(),
      '/chatList' : (context) => ChatListPage()
    },);
    return app;
  }
}

class TodoListPage extends StatelessWidget {
  TodoListPage({Key key,this.title,this.todoList}):super(key:key);
  final String title;
  final List todoList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("todoList")),
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context,index){
          Todo todo = todoList[index];
          return ListTile(title:Text(todo.title),
          subtitle: Text(todo.description),
          onTap: () {
            Navigator.pushNamed(context, todo.router); 
          });
        },
      )
    );
  }
  
  /*State<StatefulWidget> createState() {
    return _TodoListPageState();
  }*/
}
/*
class _TodoListPageState extends State <TodoListPage> {
  
  @override
  Widget build(BuildContext context){
    Scaffold sfld =Scaffold(
      appBar: AppBar(
        title: Text(widget.title)
      ),
      body:_todoListView(),
    );
    return sfld;
  }
  ListView _todoListView () {
    ListView lsv =ListView.builder(
      itemCount: ,
      itemBuilder: (context,i){
        return ListTile(title: Text("list item"),
        subtitle : Text("subTitle,should be long"));
      },
    );
    return lsv;
  }

}*/