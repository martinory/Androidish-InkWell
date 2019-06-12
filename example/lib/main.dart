import 'package:flutter/material.dart';
import 'package:androidish_ink_well/androidish_ink_splash.dart';
import 'package:androidish_ink_well/androidish_ink_well.dart';

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
        appBar: AppBar(
          title: const Text('Androidish InkWell'),
        ),
        body: Theme(
          data: Theme.of(context).copyWith(splashFactory: AndroidishInkSplash.splashFactory),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Material(
                  color: Colors.grey.shade800,
                  child: Builder(
                    builder: (context) => AndroidishInkWell(
                          onTap: () {
                            Scaffold.of(context).hideCurrentSnackBar();
                            Scaffold.of(context).showSnackBar(
                              SnackBar(
                                content: Text('See that splash!'),
                                action: SnackBarAction(
                                  label: 'WOW',
                                  onPressed: () => Scaffold.of(context).hideCurrentSnackBar(),
                                ),
                              ),
                            );
                          },
                          child: MaterialButton(
                            elevation: 12,
                            child: Text(
                              'SPLASH WHOLE RADIUS',
                              style: TextStyle(fontSize: 24, color: Colors.white),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 48, vertical: 24),
                          ),
                        ),
                  ),
                ),
              ),
              SizedBox(height: 48),
              Center(
                child: Material(
                  color: Colors.grey.shade800,
                  child: Builder(
                    builder: (context) => AndroidishInkWell(
                          coverWholeRadius: false,
                          child: MaterialButton(
                            elevation: 12,
                            child: Text(
                              'SPLASH 50% OF RADIUS',
                              style: TextStyle(fontSize: 24, color: Colors.white),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 48, vertical: 24),
                          ),
                          onTap: () {
                            Scaffold.of(context).hideCurrentSnackBar();
                            Scaffold.of(context).showSnackBar(
                              SnackBar(
                                content: Text('See that splash!'),
                                action: SnackBarAction(
                                  label: 'WOW',
                                  onPressed: () => Scaffold.of(context).hideCurrentSnackBar(),
                                ),
                              ),
                            );
                          },
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
