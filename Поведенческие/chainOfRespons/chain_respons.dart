abstract class Chain {
  void setNextChain(Chain nextChain);

  void calculate(Numbers request);
}

class Numbers {
  late int number1;
  late int number2;

  late String calculationWanted;

  Numbers(int number1, int number2, String calcWanted) {
    this.number1 = number1;
    this.number2 = number2;
    this.calculationWanted = calcWanted;
  }

  int getNumber1() {
    return number1;
  }

  int getNumber2() {
    return number2;
  }

  String getCalcWant() {
    return calculationWanted;
  }
}

class AddNumbers implements Chain {
  late Chain nextInChain;

  void setNextChain(Chain nextChain) {
    this.nextInChain = nextChain;
  }

  void calculate(Numbers request) {
    if (request.getCalcWant() == 'add') {
      print(
          '${request.getNumber1()} + ${request.getNumber2()} = ${request.getNumber1() + request.getNumber2()}');
    } else {
      nextInChain.calculate(request);
    }
  }
}

class MinusNumbers implements Chain {
  late Chain nextInChain;

  void setNextChain(Chain nextChain) {
    this.nextInChain = nextChain;
  }

  void calculate(Numbers request) {
    if (request.getCalcWant() == 'minus') {
      print(
          '${request.getNumber1()} - ${request.getNumber2()} = ${request.getNumber1() - request.getNumber2()}');
    } else {
      nextInChain.calculate(request);
    }
  }
}

class MultNumbers implements Chain {
  late Chain nextInChain;

  void setNextChain(Chain nextChain) {
    this.nextInChain = nextChain;
  }

  void calculate(Numbers request) {
    if (request.getCalcWant() == 'mult') {
      print(
          '${request.getNumber1()} * ${request.getNumber2()} = ${request.getNumber1() * request.getNumber2()}');
    } else {
      nextInChain.calculate(request);
    }
  }
}
