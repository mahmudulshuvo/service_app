import 'package:flutter/material.dart';

class InputWidget extends StatefulWidget {
  InputWidget();

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _InputWidgetState();
  }
}

class _InputWidgetState extends State<InputWidget> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  final storeController = TextEditingController();

  final productController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 120.0),
            TextField(
              decoration: InputDecoration(labelText: 'Store ID', filled: true),
              controller: storeController,
            ),
            SizedBox(height: 120.0),
            TextField(
              decoration:
                  InputDecoration(labelText: 'Product sell', filled: true),
              controller: productController,
            ),
            ButtonBar(
              children: <Widget>[
                RaisedButton(
                  child: Text('Submit'),
                  onPressed: () {
                    return showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Text('Store Id: ' +
                              storeController.text +
                              '\n' +
                              'Product sell: ' +
                              productController.text),
                        );
                      },
                    );
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
