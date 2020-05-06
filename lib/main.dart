import 'package:flutter/material.dart';
import 'package:local_chat/app-theme.dart';

import 'pages/home-page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Local Chat',
      initialRoute: '/',
      routes: {
        '/': (context) => myMaterial(child: HomePage()),
        // '/server': (context) => MyMaterial(child: ServerPage()),
      },
      theme: ThemeData(
          textTheme: Theme.of(context).textTheme.apply(
                fontFamily: AppTheme.mainText.fontFamily,
                bodyColor: AppTheme.mainText.color,
                displayColor: AppTheme.mainText.color,
              )),
    );
  }

  Widget myMaterial({Widget child}) => Material(
        color: AppTheme.backgroundColor,
        child: child,
      );
}
