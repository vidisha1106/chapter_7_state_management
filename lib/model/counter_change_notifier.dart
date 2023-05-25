
import 'package:flutter/material.dart';

class Counter with ChangeNotifier
{
    int counter;
    Counter(this.counter);
    void increment()
    {
        counter++;
        notifyListeners();
    }
    void decrement()
    {
        counter--;
        notifyListeners();
    }
}