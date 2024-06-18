import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvp/color_generator_page/view/color_generator_view.dart';
import 'package:mvp/counter_page/model/counter_model.dart';
import 'package:mvp/counter_page/model/counter_model_interface.dart';
import 'package:mvp/counter_page/presenter/counter_presenter_interface.dart';

class CounterPresenter extends ChangeNotifier implements ICounterPresenter {
  late ICounterModel _counterModel;

  CounterPresenter() {
    _counterModel = CounterModel();
  }

  @override
  int get counterValue => _counterModel.count;

  @override
  bool get counterIsLocked => _counterModel.isLocked;

  @override
  void increment() {
    _counterModel.increment();
    notifyListeners();
  }

  @override
  void decrement() {
    _counterModel.decrement();
    notifyListeners();
  }

  @override
  void changeLockCounter() {
    _counterModel.changeLockCounter();
    notifyListeners();
  }

  @override
  void goToColorPage(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const ColorGeneratorView()));
  }
}
