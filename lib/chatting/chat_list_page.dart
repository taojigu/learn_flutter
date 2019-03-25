//source code :https://codelabs.developers.google.com/codelabs/flutter/#3
import 'package:flutter/material.dart';

class ChatListPage extends StatefulWidget {
  final Widget child;

  ChatListPage({Key key, this.child}) : super(key: key);

  _ChatListPageState createState() => _ChatListPageState();
}

class _ChatListPageState extends State<ChatListPage> {

  TextEditingController _textEditingController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Chatting')),
      body: _textInputWidget(),
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
                            decoration: new InputDecoration.collapsed(
                              hintText: 'Send Message'
                            ),
                            controller: _textEditingController,
                          ),
                        ),
                        new Container(
                          margin: EdgeInsets.symmetric(horizontal: 4),
                          child: new IconButton(
                            icon: new Icon(Icons.send),
                            onPressed: () {
                              _sendMessageText(_textEditingController.text);
                            }
                          ),
                        )
                      ],
                    )
                    
                  );
                }
              
    void _sendMessageText(String value) {
      print('Message $value is send');
    }
}