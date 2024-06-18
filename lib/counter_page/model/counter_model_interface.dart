abstract class ICounterModel {
  int get count;
  bool get isLocked;

  void increment();
  void decrement();
  void changeLockCounter();
}