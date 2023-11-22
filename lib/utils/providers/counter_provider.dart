import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier
{
  int counter = 0;

  void counterAddOne()
  {
    counter++;
    notifyListeners();
  }

    void counterMinusOne()
  {
    counter--;
    notifyListeners();
  }
}