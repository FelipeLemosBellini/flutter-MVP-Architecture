import 'package:flutter/cupertino.dart';
import 'package:mvp/model/counter_model.dart';

class HomePresenter extends ChangeNotifier {
  final CounterModel _counterModel = CounterModel();

  int get counterValue => _counterModel.counter;

  bool get counterIsLocked => _counterModel.counterIsLocked;

  void increment() {
    _counterModel.increment();
    notifyListeners();
  }

  void decrement() {
    _counterModel.decrement();
    notifyListeners();
  }


  void changeLockCounter() {
    _counterModel.changeLockCounter();
    notifyListeners();
  }
}
