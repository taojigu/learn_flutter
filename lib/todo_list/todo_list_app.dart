import 'package:flutter/material.dart';


class TodoListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget homePage = TodoListPage(title:"todo");
    MaterialApp  app =  MaterialApp(title: "TodoApp",
    theme: ThemeData(primarySwatch: Colors.blueGrey),
    home: homePage);
    return app;
  }
}

class TodoListPage extends StatefulWidget {
  TodoListPage({Key key,this.title}):super(key:key);
  final String title;
  @override
  State<StatefulWidget> createState() {
    return _TodoListPageState();
  }
}
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
      itemCount: 2,
      itemBuilder: (context,i){
        return ListTile(title: Text("list item"));
      },
    );
    return lsv;
  }

}