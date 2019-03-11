import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
      
      return Scaffold(
        appBar: AppBar(title: Text("first page",
                       style: TextStyle(fontSize: 20),
                       )),
        body: Center(
          child: RaisedButton(
            child: Text("push next"),
            onPressed: () {
              Route route = MaterialPageRoute(
                builder:(context) => SecondPage() );
              //Navigator.push(context, route);
              Navigator.pushNamed(context, '/Second');
            },
          ),
        ),
      );
    }
}


class SecondPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text("Second page",
                       style: TextStyle(fontSize: 20),
                       )),
        body: Center(
          child: RaisedButton(
            child: Text("Pop"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      );
      
    }
}