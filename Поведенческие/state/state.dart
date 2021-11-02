abstract class DoWithCar {
  void justDoIt();
}

class Open implements DoWithCar {
  @override
  void justDoIt() {
    print("Open a car....");
  }
}

class Start implements DoWithCar {
  @override
  void justDoIt() {
    print('Start a car....');
  }
}

class Stop implements DoWithCar {
  @override
  void justDoIt() {
    print('Stop a car ......');
  }
}

class Close implements DoWithCar {
  @override
  void justDoIt() {
    print('Close a car......');
  }
}

class Car {
  late DoWithCar doWithCar;

  void setActivity(DoWithCar doWithCar) {
    this.doWithCar = doWithCar;
  }

  void changeActivity() {
    if (doWithCar is Open) {
      setActivity(Start());
    } else if (doWithCar is Start) {
      setActivity(Stop());
    } else if (doWithCar is Stop) {
      setActivity(Close());
    } else if (doWithCar is Close) {
      setActivity(Open());
    }
  }

  void justDoIt() {
    doWithCar.justDoIt();
  }
}
