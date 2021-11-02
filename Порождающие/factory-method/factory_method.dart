// фабричный метод
//это метод который возвращает конкретный экземплр конкретного объекта

abstract class Watch {
  // создаем интерфес Watch с методм шоутайм
  void showTime();
}

class DigitalWatch extends Watch {
  //создаем конкретный тип часов
  // Приводим наши продукты к общему интерфесу
  showTime() {
    print(DateTime(2021, 10, 2, 12, 30));
  }
}

class RomeWatch extends Watch {
  showTime() {
    print('\nVII-X\n');
  }
}

abstract class WatchFactory {
  // в классе WatchFac который производит часы. создаем пустой метод
  Watch createWatch(); // возвращаем тип нашего интерфейса часов
}

class DigitalWatchFactory extends WatchFactory {
  Watch createWatch() {
    //для каждого типа часов создаем свою ффабрику который реализует фабричный метод Create Whatch
    return DigitalWatch(); //который возвращает конкретный тип часов
  }
}

class RomeWatchFactory extends WatchFactory {
  Watch createWatch() {
    return RomeWatch();
  }
}
