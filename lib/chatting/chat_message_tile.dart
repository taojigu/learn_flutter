
import 'package:flutter/material.dart';
class ChatMessageTile extends StatelessWidget {
  final Widget child;

  ChatMessageTile({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
    );
  }
}