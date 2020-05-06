import 'package:flutter/material.dart';
import 'package:local_chat/widgets/button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Button("Join chat room"),
        SizedBox(height: 14),
        Button("Create chat room"),
      ],
    );
  }
}
