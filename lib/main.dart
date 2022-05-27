import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';
void main() {
  runApp( MyApp());
}


class MyApp extends StatelessWidget {
  final title = 'Flutter BLE Scan Demo';
  FlutterBlue flutterBlue = FlutterBlue.instance;

  @override
  Widget build(BuildContext context) {
    // Start scanning
    flutterBlue.startScan(timeout: Duration(seconds: 20));
    var subscription = flutterBlue.scanResults.listen((results) {
    // do something with scan results
    for (ScanResult r in results) {
      print('${r.device.name} found! rssi: ${r.rssi}');
    }
    });


    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(title: Text('blue')),
        body: ListView(children: [
          Icon(Icons.phone)
        ]),
        bottomNavigationBar: BottomAppBar(child: SizedBox(height: 100,
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
              Icon(Icons.phone),
              Icon(Icons.message),
              Icon(Icons.contact_page),
            ],) ),
          ),
      )
    );
  }
}








