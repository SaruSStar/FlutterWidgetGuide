import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_guide/utils.dart';

import '../Code.dart';
import '../CodeScreen.dart';

class AlertDialogWidget extends StatefulWidget {
  @override
  _AlertDialogWidgetState createState() => _AlertDialogWidgetState();
}

class _AlertDialogWidgetState extends State<AlertDialogWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'AlertDialog Widget',
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              fontFamily: Utils.ubuntuRegularFont),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CodeScreen(code: Code.alertDialogWidgetCode),
              ),
            ),
          )
        ],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: RaisedButton(
                  child: Text("Cupertino"),
                  onPressed: () => {
                    showDialog(
                      context: context,
                      builder: (_) => CupertinoAlertDialog(
                        title: Text("Accept Changes?"),
                        content: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Choose one"),
                        ),
                        actions: <Widget>[
                          CupertinoDialogAction(
                            child: Text("No"),
                            onPressed: () => Navigator.pop(context),
                          ),
                          CupertinoDialogAction(
                            child: Text("Yes"),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ],
                      ),
                    ),
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: RaisedButton(
                  child: Text("Material"),
                  onPressed: () => {
                    showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                        elevation: 24.0,
                        backgroundColor: Colors.white,
                        title: Text("Accept Changes?"),
                        content: Text("Choose one"),
                        actions: <Widget>[
                          FlatButton(
                            child: Text("No"),
                            onPressed: () => Navigator.pop(context),
                          ),
                          FlatButton(
                            child: Text("Yes"),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ],
                      ),
                    ),
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
