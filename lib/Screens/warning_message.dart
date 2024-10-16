import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class WarningMessageDialogBox extends StatelessWidget {
  final int type;

  const WarningMessageDialogBox({Key? key, required this.type})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return type == 1 ? _buildType1Dialog() : _buildType2Dialog();
  }

  Widget _buildType1Dialog() {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      titlePadding: EdgeInsets.zero,
      buttonPadding: EdgeInsets.zero,
      actionsPadding: EdgeInsets.zero,
      iconPadding: EdgeInsets.zero,
      insetPadding: EdgeInsets.zero,
      title: Text(
        "Warning",
        style: TextStyle(
          color: Colors.red,
          fontSize: 30,
        ),
      ),
      content: Column(
        children: [
          Text(
            "WarningWarningWarningWarningWarningWarningWarningWarningWarningWarningWarning",
            maxLines: 5,
          ),
          Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "OK",
                  style: TextStyle(color: Colors.green),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                onPressed: () {},
                child: Text(
                  "call",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildType2Dialog() {
    return AlertDialog(
      title: Text("Type 2 Dialog"),
      content: Text("This is a different dialog box for type 2."),
      actions: <Widget>[
        TextButton(
          onPressed: () {},
          child: Text('Close'),
        ),
      ],
    );
  }
}
