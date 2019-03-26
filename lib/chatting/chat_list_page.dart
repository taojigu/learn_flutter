//source code :https://codelabs.developers.google.com/codelabs/flutter/#3
import 'package:flutter/material.dart';
import 'package:learn_flutter/chatting/chat_message.dart';
import 'package:learn_flutter/chatting/chat_message_tile.dart';

class ChatListPage extends StatefulWidget {
  final Widget child;

  ChatListPage({Key key, this.child}) : super(key: key);

  _ChatListPageState createState() => _ChatListPageState();
}

class _ChatListPageState extends State<ChatListPage> {
  List<ChatMessage> _chatMessageList = new List<ChatMessage> ();
  TextEditingController _textEditingController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Chatting')),
      body: _chatListWidget(),
    );
  }
  
  Widget _chatListWidget(){
    return new Column(
      children: <Widget>[
        new Flexible(
          child: new ListView.builder(
            itemCount: _chatMessageList.length,
            itemBuilder: (BuildContext context, int index) {
              return _chatMessageTile(index);
            },
            reverse: true,
          ),
        ),
        _textInputWidget()
      ]
    );
  }
            
    Widget _textInputWidget() {
      return Container(
          margin: EdgeInsets.symmetric(horizontal: 8),
          child: new Row(
            children: <Widget>[
              new Flexible(
                child: new TextField(
                  onSubmitted: _sendMessageText,
                  decoration:
                      new InputDecoration.collapsed(hintText: 'Send Message'),
                  controller: _textEditingController,
                ),
              ),
              new Container(
                decoration: BoxDecoration(color: Colors.blueAccent),
                margin: EdgeInsets.symmetric(horizontal: 4),
                child: new IconButton(
                    icon: new Icon(Icons.send),
                    onPressed: () {
                      _sendMessageText(_textEditingController.text);
                    }),
              )
            ],
          ));
    }
  
    void _sendMessageText(String value) {
      
      setState(() {
        ChatMessage msg = new ChatMessage('Gu', null, value);
        _chatMessageList.insert(0, msg);
        _textEditingController.clear();
      });
      
    }
  
    Widget _chatMessageTile(int index) {
      ChatMessage message = _chatMessageList[index];
      return ChatMessageTile(message: message);
    }
}
