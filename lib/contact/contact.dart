
import 'package:learn_flutter/contact/emal.dart';
import 'package:learn_flutter/contact/mobile.dart';

class Contact {
  final List<Mobile> mobileList;
  final List<Email> emailList;
  final String name;

  Contact({this.name,this.mobileList, this.emailList});

  static Contact fakeContact () {
    Mobile m1 =Mobile("Home", '18811113744');
    Mobile m2 =Mobile("Office", '010-88420241');
    return new Contact(
      name: 'Annie',
      mobileList: [m1,m2]
    );
  }
}