import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  test() async {
    if (await FlutterContacts.requestPermission()) {
      List<Contact> contacts = await FlutterContacts.getContacts( withProperties: true, withPhoto: true);
      for(int i=0;i<contacts.length;i++){
          print(contacts[i].phones);
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    test();
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(title: Text('hello'),),
        body: Text('hellosffds'),
        bottomNavigationBar: BottomAppBar(child:
         SizedBox(
           height: 100,
           child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             Icon(Icons.phone),
             Icon(Icons.message),
             Icon(Icons.contact_page),
           ]),
         )),
      )
    );
  }
}



