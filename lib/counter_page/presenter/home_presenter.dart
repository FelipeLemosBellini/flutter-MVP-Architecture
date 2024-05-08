import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvp/color_generator_page/view/color_generator_view.dart';
import 'package:mvp/counter_page/model/counter_model.dart';

class HomePresenter extends ChangeNotifier {
  HomePresenter() : super();

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

  void goToColorPage(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const ColorGeneratorView()));
  }
}
