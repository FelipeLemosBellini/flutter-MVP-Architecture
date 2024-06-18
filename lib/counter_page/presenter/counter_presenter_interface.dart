import 'package:flutter/material.dart';

abstract class ICounterPresenter {
  int get counterValue;

  bool get counterIsLocked;

  void increment();

  void decrement();

  void changeLockCounter();

  void goToColorPage(BuildContext context);
}
