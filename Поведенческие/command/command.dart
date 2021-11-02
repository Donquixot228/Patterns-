abstract class Command {
  void execute();
}

class Car {
  void start() {
    print('Start a car');
  }

  void stop() {
    print('Stop a car');
  }

  void fix() {
    print('Fix a car');
  }
}

//создаем команды для работы с машиной
class StartCommand implements Command {
  //создаем ссылку на машину
  late Car car;

  StartCommand(Car car) {
    this.car = car;
  }

  void execute() {
    car.start();
  }
}

class StopCommand implements Command {
  late Car car;

  StopCommand(Car car) {
    this.car = car;
  }

  void execute() {
    car.stop();
  }
}

class FixCommand implements Command {
  late Car car;

  FixCommand(Car car) {
    this.car = car;
  }

  void execute() {
    car.fix();
  }
}

class Driver {
  late Command start;
  late Command stop;
  late Command fix;

  Driver(Command start, Command stop, Command fix) {
    this.start = start;
    this.fix = fix;
    this.stop = stop;
  }

//для запуска создадим методы
  void startCar() {
    start.execute();
  }

  void stopCar() {
    stop.execute();
  }

  void fixCar() {
    fix.execute();
  }
}
