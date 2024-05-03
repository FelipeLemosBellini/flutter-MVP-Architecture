class CounterModel {
  int counter = 0;
  bool counterIsLocked = false;

  CounterModel();

  void increment() {
    if (!counterIsLocked) counter++;
  }

  void decrement() {
    if (counter != 0 && !counterIsLocked) counter--;
  }

  void changeLockCounter() {
    counterIsLocked = !counterIsLocked;
  }
}
