
import 'package:flutter/material.dart';
import 'package:learn_flutter/contact/contact.dart';

class ContactPage extends StatefulWidget {
  
  ContactPage({Key key}) : super(key: key);
  _ContactPageState createState() => _ContactPageState();
}

enum AppBarBehavior { normal, pinned, floating, snapping }

class _ContactPageState extends State<ContactPage> {
  Contact _contact;
  AppBarBehavior _appBarBehavior = AppBarBehavior.pinned;
  @override
  void initState() {
    _contact = Contact.fakeContact();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Theme(
      data: new ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.indigo,
        platform: Theme.of(context).platform
      ),
      child: new Scaffold(
        body: new CustomScrollView(
          slivers: <Widget>[
            _silverAppBar(context),
            _silverList(context)
          ],
        ),
      ),
    );
  }
            
  _silverAppBar(BuildContext context) {
    return new SliverAppBar(
      expandedHeight: 256,
      pinned: _appBarBehavior == AppBarBehavior.pinned,
      floating: _appBarBehavior ==AppBarBehavior.floating 
      || _appBarBehavior ==AppBarBehavior.snapping,
      snap: _appBarBehavior ==AppBarBehavior.snapping,
      actions: <Widget>[
        new IconButton(
          icon: const Icon(Icons.create),
          onPressed: () {

          },
          tooltip: "Create"
        )
      ],
    );
  }

  _silverList(BuildContext context) {
    return Container();
  }
}
