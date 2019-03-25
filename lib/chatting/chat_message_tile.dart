
import 'package:flutter/material.dart';
import 'package:learn_flutter/chatting/chat_message.dart';
class ChatMessageTile extends StatelessWidget {
  final Widget child;
  final ChatMessage message;

  ChatMessageTile({Key key, this.child, this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(
            margin: EdgeInsets.only(right: 16),
            child: new CircleAvatar(
              child: new Text(message.name[0]),
            ),
          ),
          new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(message.name, style:Theme.of(context).textTheme.subhead),
              new Container(
                margin: EdgeInsets.only(top: 5),
                child: new Container(
                  child: new Text(message.text,style: Theme.of(context).textTheme.subtitle),
                  margin: EdgeInsets.only(top:5),
                ),
              )
            ],
          )
        ],
      )
    );
  }
}