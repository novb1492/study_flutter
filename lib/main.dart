import 'package:flutter/material.dart';
import 'package:contacts_service/contacts_service.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    getPermission();
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(title: Text('fdfs'),),
        body: Text('hello'),
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

getPermission() async{
    var contacts = await ContactsService.getContacts();
    print('ff');
  }





