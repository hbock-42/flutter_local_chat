import 'package:flutter/material.dart';
import 'package:local_chat/app-theme.dart';

class Button extends StatelessWidget {
  final void Function() onTap;
  final String text;

  const Button(this.text, {Key key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        decoration: BoxDecoration(
          color: AppTheme.widgetBackgroundColor,
          borderRadius: BorderRadius.circular(100),
        ),
        child: ConstrainedBox(
          constraints: BoxConstraints(minWidth: 170),
          child: Text(
            this.text,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
