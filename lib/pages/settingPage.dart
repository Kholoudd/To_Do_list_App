import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          width: double.infinity,
          height: 190,
          color: theme.primaryColor,
          child: Text(
            "Settings",
            style: theme.textTheme.titleLarge,
          ),
        ),
      ],
    );
  }
}
