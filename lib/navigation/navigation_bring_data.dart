import 'package:flutter/material.dart';

class Todo {
  final String title;
  final String description;

  Todo(this.title,this.description);
}

class TodoListPage extends StatelessWidget {
  final List todoList;

  TodoListPage({Key key, @required this.todoList}):super(key:key);

  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      
      return Scaffold(
        appBar: AppBar(
          title: Text("Todo List Page"),
          backgroundColor: Colors.teal,
        ),
        body: ListView.builder(
          itemCount: this.todoList.length,
          itemBuilder: (context,index) {
            return ListTile(
              title: Text(todoList[index].title),
              onTap: () {
                MaterialPageRoute pageRouter = MaterialPageRoute(
                  builder: (context) => TodoDetailPage(todoList[index]);
                );
                Navigator.push(context, pageRouter);
              },
            );
          },
        )
      );
      
    }
}

class TodoDetailPage extends StatelessWidget {
  final Todo todo;

  TodoDetailPage({Key key,@required this.todo}):super(key:key);

  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return Scaffold(
        appBar: AppBar(
          title:Text(title);
        ),
      );
    };
}