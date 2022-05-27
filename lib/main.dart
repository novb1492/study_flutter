import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(title: Text('hello'),),
        body: Text('hello'),
        bottomNavigationBar: BottomAppBar(child:
         Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
           Icon(Icons.phone),
           Icon(Icons.message),
           Icon(Icons.contact_page),
         ])),
      )
    );
  }
}



