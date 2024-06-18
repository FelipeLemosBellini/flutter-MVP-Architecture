import 'package:mvp/counter_page/model/counter_model_interface.dart';

class CounterModel implements ICounterModel {
  int counter = 0;
  bool counterIsLocked = false;

  CounterModel();

  @override
  void increment() {
    if (!counterIsLocked) counter++;
  }

  @override
  void decrement() {
    if (counter != 0 && !counterIsLocked) counter--;
  }

  @override
  void changeLockCounter() {
    counterIsLocked = !counterIsLocked;
  }

  @override
  int get count => counter;

  @override
  bool get isLocked => counterIsLocked;
}
