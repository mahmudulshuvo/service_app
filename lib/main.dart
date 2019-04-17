import 'package:flutter/material.dart';
import './input_widget.dart';

void main() => runApp(ServiceApp());

class ServiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        theme: ThemeData(
            primarySwatch: Colors.deepOrange, accentColor: Colors.deepPurple),
        home: Scaffold(
            appBar: AppBar(
              title: Text('Flutter Demo'),
            ),
            body: InputWidget()));
  }
}
