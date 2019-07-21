In version 1, the ripple effect would start not on tap down but on release. In version 2, it has been changed to the original behaviour, but with an ink splash that is faster, fades in and with a radius that is not zero.

## Getting started
    dependencies:
      androidish_ink_well: ^2.0.0

    import 'package:androidish_ink_well/material_ink_splash.dart';

Add splashFactory: MaterialInkSplash.splashFactory to Theme.

```
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
          data: Theme.of(context)
              .copyWith(splashFactory: MaterialInkSplash.splashFactory),
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
```

## Example
- [Example app](https://github.com/martinory/Androidish-InkWell/tree/master/example)

