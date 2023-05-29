import 'dart:ffi';

import 'package:flutter/material.dart';

class PassCounterInheritedModel extends InheritedModel<Int> {
    int counter1;
    int counter2;

   PassCounterInheritedModel({
    Key? key,
    required Widget child,
    required this.counter1,
    required this.counter2,
  }) : super(key: key, child: child);

  static PassCounterInheritedModel? of(BuildContext context,String aspect) {
    final PassCounterInheritedModel? result =
        context.dependOnInheritedWidgetOfExactType<PassCounterInheritedModel>();
    return InheritedModel.inheritFrom<PassCounterInheritedModel>(context,aspect: aspect);
    // assert(result != null, 'No PassCounter found in context');
    // return result!;
  }

  @override
  bool updateShouldNotify(PassCounterInheritedModel oldWidget) {
    return oldWidget.counter1 != counter1;
  }

  @override
  bool updateShouldNotifyDependent(
      PassCounterInheritedModel oldWidget, Set<Int> dependencies) {
    if(dependencies.contains('counter2'))
    {
      return true;
    }
    return false;
  }
}
