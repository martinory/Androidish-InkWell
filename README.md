Androidish InkWell is an inkWell that splashes like Android. This repository contains a modified InkWell and InkSplash that is similar in the behavior of Android.

## Getting started
    dependencies:
      androidish_ink_well: any


    import 'package:androidish_ink_well';

Example of a button that splashed whole radius:

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

Example of a button that splashed 50% of radius:

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

