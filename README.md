Androidish InkWell is an inkWell that splashes similar to material design. This repository contains a modified InkWell and InkSplash that behaves similar to material design.

Requires Flutter >= 1.6.3.

## Getting started
    dependencies:
      androidish_ink_well: any


    import 'package:androidish_ink_well/androidish_ink_well.dart';

Example of a button that splashes the whole radius:

    Theme(
      data: Theme.of(context).copyWith(splashFactory: AndroidishInkSplash.splashFactory),
      child: Material(
        color: Colors.grey.shade800,
        child: AndroidishInkWell(
          onTap: () {},
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
    );

Example of a button that splashes 50% of the radius:

    Theme(
          data: Theme.of(context).copyWith(splashFactory: AndroidishInkSplash.splashFactory),
          child: Material(
            color: Colors.grey.shade800,
            child: AndroidishInkWell(
              coverWholeRadius: false,
              child: MaterialButton(
                elevation: 12,
                child: Text(
                  'SPLASH 50% OF RADIUS',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
                padding: EdgeInsets.symmetric(horizontal: 48, vertical: 24),
              ),
              onTap: () {},
            ),
          ),
        );
## Example
- [Example app](https://github.com/martinory/Androidish-InkWell/tree/master/example)

