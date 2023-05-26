import 'package:flutter/material.dart';

class PassCounter extends InheritedWidget {
  int counter;

  PassCounter({
    Key? key,
    required Widget child,
    required this.counter,
  }) : super(key: key, child: child);

  static PassCounter of(BuildContext context) {
    final PassCounter? result =
        context.dependOnInheritedWidgetOfExactType<PassCounter>();
    assert(result != null, 'No PassCounter found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(PassCounter old) {
    return old.counter != counter;
  }
}
