import 'package:flutter/material.dart';

class EasyHomePage extends StatefulWidget {
  @override
  EasyHomeState createState() => EasyHomeState();
}

class EasyHomeState extends State <EasyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("EasyHome")),
      body: Center(
        child:Column (
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pushed the button this many times:'),
            Text("$_counter",
            style: Theme.of(context).textTheme.display2)
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Icrease',
        onPressed: () {
          setState(() {
            _counter ++;
          });
        },
        child: Icon(Icons.add)
      ),
    );
    
  }

}