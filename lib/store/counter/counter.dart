import 'dart:math';

import 'package:mobx/mobx.dart';

part 'counter.g.dart';

class Counter = _Counter with _$Counter;

abstract class _Counter with Store {
  @observable
  int count = 0;

  @action
  void increment() {
    count++;
  }

  @action
  void decrement() {
    count--;
  }

  @action
  void reset() {
    count = 0;
  }

  @action
  void random() {
    count = new Random().nextInt(100);
  }
}
