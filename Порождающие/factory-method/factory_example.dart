import 'factory_method.dart';


void main(){

  //римские часы
  WatchFactory romeWatchFactory = RomeWatchFactory();       //наша фабрика будет создавать часы с римским числами

  Watch romewatch = romeWatchFactory.createWatch();           //создаем часы
  romewatch.showTime();                                  //выводим время

  //цифровые часы

  WatchFactory digitalWatchFactory = DigitalWatchFactory();

  Watch digitalWatch = digitalWatchFactory.createWatch();
  digitalWatch.showTime();

}