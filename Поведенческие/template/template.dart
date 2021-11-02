
abstract class FixResult {
  void showFix() {
    print('\n Ваш автомобиль: ');
    showResult();
  }

  void showResult();
}

class FixDone extends FixResult {
  @override
  void showResult() {
    print('был отремонтирован ');
  }
}

class FixNotDone extends FixResult {
  @override
  void showResult() {
    print('отремонтировать не успели');
  }
}
