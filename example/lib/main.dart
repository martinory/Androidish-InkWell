import 'package:flutter/material.dart';
import 'package:androidish_ink_well/material_ink_splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Theme(
          data: Theme.of(context).copyWith(
            splashFactory: MaterialInkSplash.splashFactory,
          ),
          child: Center(
            child: Material(
              child: MaterialButton(
                child: Text('BUTTON'),
                onPressed: () {},
              ),
            ),
          ),
        ),
      ),
    );
  }
}
