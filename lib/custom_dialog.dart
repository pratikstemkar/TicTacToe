import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  String title;
  String content;
  VoidCallback callback;
  String actionText;

  CustomDialog(this.title, this.content, this.callback,
      [this.actionText = "Reset"]);
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: <Widget>[
        FlatButton(
          onPressed: callback,
          color: Colors.white,
          child: Text(actionText),
        ),
      ],
    );
  }
}
