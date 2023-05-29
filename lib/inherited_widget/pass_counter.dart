import 'package:flutter/material.dart';

class PassCounterInheritedWidget extends InheritedWidget {
  int counter;

  PassCounterInheritedWidget({
    Key? key,
    required Widget child,
    required this.counter,
  }) : super(key: key, child: child);

  static PassCounterInheritedWidget of(BuildContext context) {
    final PassCounterInheritedWidget? result = context
        .dependOnInheritedWidgetOfExactType<PassCounterInheritedWidget>();
    assert(result != null, 'No PassCounter found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(PassCounterInheritedWidget old) {
    return old.counter != counter;
  }
}

